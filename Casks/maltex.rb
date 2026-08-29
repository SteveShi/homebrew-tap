cask "maltex" do
  version "1.1.20"
  sha256 "062ed57d71922e09b8f17a6c92b273b746f0e55ba7b9436137c879f0aef1d20e"

  url "https://github.com/SteveShi/Maltex/releases/download/v#{version}/Maltex-#{version}-universal.dmg"
  name "Maltex"
  desc "Maltex macOS App"
  homepage "https://github.com/SteveShi/Maltex"

  app "Maltex.app"

  zap trash: [
    "~/Library/Application Support/Maltex",
    "~/Library/Preferences/app.maltex.native.plist",
    "~/Library/Saved Application State/app.maltex.native.savedState",
  ]
end
