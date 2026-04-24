cask "essays" do
  version "2.5.2"
  sha256 "bf8fce9fc3abd8a3876dbf0ef7bb16dd55db98a25465e38ef86fd0017c0bd71a"

  url "https://github.com/lpgneg19/Essays/releases/download/v#{version}/Essays-AppleSilicon.dmg"
  name "Essays"
  desc "Essays macOS App"
  homepage "https://github.com/lpgneg19/Essays"

  app "Essays.app"

  zap trash: [
    "~/Library/Application Support/Essays",
    "~/Library/Preferences/com.essays.app.plist",
    "~/Library/Saved Application State/com.essays.app.savedState",
  ]
end
