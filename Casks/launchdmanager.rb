cask "launchdmanager" do
  version "0.0.2"
  sha256 :no_check

  url "https://github.com/SteveShi/Launchdmanager/releases/download/v#{version}/Launchdmanager-#{version}.zip"
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
