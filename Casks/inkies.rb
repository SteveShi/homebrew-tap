cask "inkies" do
  version "1.1.0"
  sha256 "72a0bb83395b58968189d7f7f07367ba04587d182ad0657d56a5f0aae5829038"

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
