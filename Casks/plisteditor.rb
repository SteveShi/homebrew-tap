cask "plisteditor" do
  version "1.1.1"
  sha256 "0d4cd8f04552fff9ec2ee5bb26b588e24d11b9f6f5596c221661d582e04ee906" # TODO: update with the v#{version} release DMG checksum

  url "https://github.com/SteveShi/PlistEditor/releases/download/v#{version}/PlistEditor-#{version}-Universal.dmg"
  name "PlistEditor"
  desc "Property list editor with a synced outline and source view"
  homepage "https://github.com/SteveShi/PlistEditor"

  app "PlistEditor.app"

  zap trash: [
    "~/Library/Application Support/PlistEditor",
    "~/Library/Preferences/com.steveshi.plisteditor.plist",
    "~/Library/Saved Application State/com.steveshi.plisteditor.savedState",
  ]
end
