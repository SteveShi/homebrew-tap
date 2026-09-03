cask "maltex" do
  version "1.2.1"
  sha256 "ac6e70fb922d994f95477e517c54218e2767a305ac73077dcf27e8bccd095acc"

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
