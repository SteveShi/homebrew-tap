cask "essays" do
  version "2.9.2"
  sha256 "70098fa4cbdc8866914cdab2e05a4793c8b6d07d79ecde6bf2272f07eb7cd064"

  url "https://github.com/SteveShi/Essays/releases/download/v#{version}/Essays-#{version}-universal.dmg"
  name "Essays"
  desc "Essays macOS App"
  homepage "https://github.com/SteveShi/Essays"

  app "Essays.app"

  zap trash: [
    "~/Library/Application Support/Essays",
    "~/Library/Preferences/com.essays.app.plist",
    "~/Library/Saved Application State/com.essays.app.savedState",
  ]
end
