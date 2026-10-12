cask "plisteditor" do
  version "1.1.6"
  sha256 "8464afbe24e17d65b8517dbf74ea9db42c2e97caa709f2e8f3abdae0262b7d6a" # TODO: update with the v#{version} release DMG checksum

  url "https://github.com/SteveShi/PlistEditor/releases/download/v#{version}/PlistEditor-#{version}-universal.dmg"
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
