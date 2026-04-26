cask "mdwriter" do
  version "2.1.2"
  sha256 "a8491487a486c6e4a28f4f4921a7e0c25aac8ccbb0bef9b8487541f2526cd4ee"

  url "https://github.com/lpgneg19/MDWriter/releases/download/v#{version}/MDWriter-#{version}-Universal.dmg"
  name "MDWriter"
  desc "Markdown Editor"
  homepage "https://github.com/lpgneg19/MDWriter"

  app "MDWriter.app"

  zap trash: [
    "~/Library/Application Support/MDWriter",
    "~/Library/Preferences/listentotherain.MDWriter.plist",
    "~/Library/Saved Application State/listentotherain.MDWriter.savedState",
  ]
end
