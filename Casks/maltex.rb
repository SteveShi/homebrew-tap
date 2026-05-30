cask "maltex" do
  version "1.1.5"
  sha256 "92c01f0a9c6bbffd44dc05b63f6456b18a48c0cfbe4a857a8005542f1cdfa50c"

  url "https://github.com/SteveShi/Maltex/releases/download/v#{version}/Maltex-#{version}-Universal.dmg"
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
