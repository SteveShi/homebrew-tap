cask "inkies" do
  version "1.1.3"
  sha256 "e454518a11df698fd742474a112d1279088a1d972b9f410f945b10909c049eac"

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
