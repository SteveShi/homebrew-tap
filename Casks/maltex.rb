cask "maltex" do
  version "1.1.7"
  sha256 "1cd7b0b5dd538c104a6f284656e7297c07831730aaf6f5e6d0fdd4f0089a7c67"

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
