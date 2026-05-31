cask "agave" do
  version "0.2"
  sha256 "5cfad1d8c294f688b03b9bc07b1f46b3861258d5d7f2b9806a082461e5adb2b1"

  url "https://github.com/SteveShi/Agave/releases/download/v#{version}/Agave-#{version}-Universal.dmg"
  name "Agave"
  desc "Modern native container client for macOS"
  homepage "https://github.com/SteveShi/Agave"

  app "Agave.app"

  zap trash: [
    "~/Library/Application Support/Agave",
    "~/Library/Preferences/com.steveshi.agave.plist",
    "~/Library/Saved Application State/com.steveshi.agave.savedState",
  ]
end
