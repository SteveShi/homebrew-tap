cask "maltex" do
  version "1.1.2"
  sha256 "850df83df9d7bc54824eb950287e7f8f0f0d8f9cff5b407a0ead0c4031f1453f"

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
