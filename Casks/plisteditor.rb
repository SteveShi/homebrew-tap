cask "plisteditor" do
  version "1.1.2"
  sha256 "f6e7e04e2daa23c7d399810e6e640bf5d6fb45a131de4b15b27c393a6a49c94c" # TODO: update with the v#{version} release DMG checksum

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
