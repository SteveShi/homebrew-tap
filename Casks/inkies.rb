cask "inkies" do
  version "1.0.3"
  sha256 "aa775b700c89a571c59617697b7d6ae69082e5de4fa633ed633876f4d0d707ec"

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
