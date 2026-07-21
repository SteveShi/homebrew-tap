cask "launchdmanager" do
  version "0.0.2"
  sha256 "c5596007b9a7cb9df90e1f6411bb7be5a26bfa130ce2e6b49f03dc3e4fb80e67"

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
