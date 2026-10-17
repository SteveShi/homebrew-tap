cask "mdwriter" do
  version "4.0.0"
  sha256 "d03b417ab64c042dae08470df04c04c547399c2ee242f0534464ebbcb6465ff1"

  url "https://github.com/SteveShi/MDWriter/releases/download/v#{version}/MDWriter-#{version}-universal.dmg"
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
