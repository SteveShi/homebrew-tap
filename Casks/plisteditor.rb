cask "plisteditor" do
  version "1.1.4"
  sha256 "2502c07a9be4b7d9772f031f58430f4813b6102b4e49d058e09fa3f9db5a8d95" # TODO: update with the v#{version} release DMG checksum

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
