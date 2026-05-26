cask "mdwriter" do
  version "2.5.4"
  sha256 "c6dfbd8b1b9bbaa2e67411c37b35dc1c53bbc1ecc5ea928d2c6c5d11494d3076"

  url "https://github.com/SteveShi/MDWriter/releases/download/v#{version}/MDWriter-#{version}-Universal.dmg"
  name "MDWriter"
  desc "Markdown Editor"
  homepage "https://github.com/SteveShi/MDWriter"

  app "MDWriter.app"

  zap trash: [
    "~/Library/Application Support/MDWriter",
    "~/Library/Preferences/listentotherain.MDWriter.plist",
    "~/Library/Saved Application State/listentotherain.MDWriter.savedState",
  ]
end
