cask "mdwriter" do
  version "3.1.0"
  sha256 "76cb16c39f8cfb8e107456ae4ba2ca28e16e79a7e12bcce4594b209e8109cb62"

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
