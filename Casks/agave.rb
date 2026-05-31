cask "agave" do
  version "0.3"
  sha256 "23986ef6fcfda3ba80c28e99a6d2c8a1f93a41942fbaf9459c47638a3ada64d1"

  url "https://github.com/SteveShi/Agave/releases/download/v#{version}/Agave-#{version}-Universal.dmg"
  name "Agave"
  desc "Modern native container client for macOS"
  homepage "https://github.com/SteveShi/Agave"

  app "Agave.app"

  zap trash: [
    "~/Library/Application Support/Agave",
    "~/Library/Preferences/com.steveshi.agave.plist",
    "~/Library/Saved Application State/com.steveshi.agave.savedState",
  ]
end
