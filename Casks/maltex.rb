cask "maltex" do
  version "1.1.0"
  sha256 "1eb97ba3d0d2cd373b3b5c0df2b449b3d8ebfd645cadba1ca97915330024a9e5"

  url "https://github.com/lpgneg19/Maltex/releases/download/v#{version}/Maltex-#{version}-Universal.dmg"
  name "Maltex"
  desc "Maltex macOS App"
  homepage "https://github.com/lpgneg19/Maltex"

  app "Maltex.app"

  zap trash: [
    "~/Library/Application Support/Maltex",
    "~/Library/Preferences/app.maltex.native.plist",
    "~/Library/Saved Application State/app.maltex.native.savedState",
  ]
end
