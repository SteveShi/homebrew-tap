cask "agave" do
  version "0.3.1"
  sha256 "bfdbdc73fb729c5ebce5295f390cb1beae8bf789abd6c52e9b0e5bcf42c78759"

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
