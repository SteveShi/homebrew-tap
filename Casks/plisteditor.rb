cask "plisteditor" do
  version "1.1.0"
  sha256 "0f4c60a0af549b260b3c2acfb750bcf4844b918c03bebf0d2bfc8ca0809da497" # TODO: update with the v#{version} release DMG checksum

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
