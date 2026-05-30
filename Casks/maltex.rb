cask "maltex" do
  version "1.1.5"
  sha256 "a90c464992d3e7ef75d75958e6bf1e9360282931fe228bd4a47508ebb27c6bef"

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
