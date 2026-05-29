cask "mdwriter" do
  version "2.5.7"
  sha256 "67a4ed2a1ad868c4f4d2e56d418a59c3871005b9293b6da49e5e3945cdfbc009"

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
