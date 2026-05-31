cask "agave" do
  version "0.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
