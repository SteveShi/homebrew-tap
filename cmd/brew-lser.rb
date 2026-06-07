require "cask/caskroom"
require "livecheck/livecheck"
require "utils/output"

# `ohai`/`opoo`/`odebug`/`ofail` are no longer global Kernel methods; pull the
# mixin that provides them into this command's top-level scope.
include Utils::Output::Mixin

# Paths owned by casks that are still installed — never report these as leftovers.
$paths_in_use = Set.new

class Uninstaller < Cask::Artifact::AbstractUninstall
  def scan_paths(paths)
    resolved = []
    each_resolved_path(:scan, paths) do |path, resolved_paths|
      resolved.concat(resolved_paths) unless $paths_in_use.include?(path)
    end
    resolved
  end
end

# All core casks, loaded by token so they resolve from the API when the
# homebrew/cask tap isn't tapped locally (the default since Homebrew 4.0).
def all_casks
  CoreCaskTap.instance.cask_tokens.filter_map do |token|
    Cask::CaskLoader.load(token, config: nil)
  rescue Cask::CaskUnreadableError => e
    opoo e.message
    nil
  end
end

def app_cask?(cask)
  cask.artifacts.any? { |a| a.is_a?(Cask::Artifact::App) }
end

# The cask's app exists on disk even though Homebrew didn't install it.
def installed_elsewhere?(cask)
  cask.artifacts.any? do |a|
    a.is_a?(Cask::Artifact::App) && Cask::Utils.path_occupied?(a.target)
  end
end

# `zap`/`uninstall` `delete:` or `trash:` paths declared by the cask.
def uninstall_paths(cask, type)
  cask.artifacts.flat_map do |a|
    next [] unless a.is_a?(Cask::Artifact::Zap) || a.is_a?(Cask::Artifact::Uninstall)

    Array(a.directives[type])
  end
end

def scan_cask(cask)
  return unless app_cask?(cask)

  delete_paths = Uninstaller.from_args(cask).scan_paths(uninstall_paths(cask, :delete))
  trash_paths = Uninstaller.from_args(cask).scan_paths(uninstall_paths(cask, :trash))
  return if delete_paths.empty? && trash_paths.empty?

  ohai "Found leftovers from #{Formatter.identifier(cask.token)}, get rid of them via:"
  ohai Formatter.identifier("brew uninstall -f --zap #{cask.token}")
  puts delete_paths.map { |path| "#{path} (delete #{path.abv})" }
  puts trash_paths.map { |path| "#{path} (trash #{path.abv})" }
rescue => e
  ofail e
end

casks = all_casks
ohai "#{casks.length} casks to scan ..."

# First pass: remember the paths of casks that are still in use.
installed_from_cask = []
installed_elsewhere = []
casks.each do |cask|
  if cask.installed?
    installed_from_cask << cask.token
  elsif installed_elsewhere?(cask)
    installed_elsewhere << cask.token
  else
    next
  end

  $paths_in_use.merge(uninstall_paths(cask, :delete))
  $paths_in_use.merge(uninstall_paths(cask, :trash))
end

ohai "Installed from cask:"
puts installed_from_cask.join(", ")
ohai "Installed from other ways:"
puts installed_elsewhere.join(", ")

# Second pass: report leftovers from casks that aren't installed any more.
casks.each { |cask| scan_cask(cask) }
