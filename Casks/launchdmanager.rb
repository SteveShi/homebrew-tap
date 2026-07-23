cask "launchdmanager" do
  version "0.0.3"
  sha256 "4595f7ce52fc701d6114ea65f3d25a0548a5c041817341ad506313056fb9f934"

  url "https://github.com/SteveShi/Launchdmanager/releases/download/v#{version}/Launchdmanager-#{version}-Universal.dmg"
  name "Launchdmanager"
  desc "Native, modern, and powerful launchd service manager for macOS"
  homepage "https://github.com/SteveShi/Launchdmanager"

  app "Launchdmanager.app"

  zap trash: [
    "~/Library/Application Support/Launchdmanager",
    "~/Library/Preferences/com.steveshi.launchdmanager.plist",
    "~/Library/Saved Application State/com.steveshi.launchdmanager.savedState",
  ]
end
