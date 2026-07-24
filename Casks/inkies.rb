cask "inkies" do
  version "1.1.4"
  sha256 "3faf9c46ee1f2d85287e8f5e8d6da18145df684d34b78ea200327f60a7c8d6d4"

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
