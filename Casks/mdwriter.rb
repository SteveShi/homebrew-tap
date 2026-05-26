cask "mdwriter" do
  version "2.5.6"
  sha256 "c0c0fbbff805834743351ad84bc6b755a4d25875e1685bd49c3a216ca97d5c8d"

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
