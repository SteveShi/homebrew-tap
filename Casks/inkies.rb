cask "inkies" do
  version "1.0.3"
  sha256 "7af08ba8ae8673d8739808d34c5e07508d76be1cab935a06286e2e1a996d1062"

  url "https://github.com/SteveShi/inkies/releases/download/v#{version}/Inkies-v#{version}.dmg"
  name "Inkies"
  desc "Inkies macOS App"
  homepage "https://github.com/SteveShi/inkies"

  app "Inkies.app"

  zap trash: [
    "~/Library/Application Support/inkies",
    "~/Library/Preferences/listentotherain.inkies.plist",
    "~/Library/Saved Application State/listentotherain.inkies.savedState",
  ]
end
