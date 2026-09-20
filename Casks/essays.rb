cask "essays" do
  version "2.9.3"
  sha256 "3d760dae0be8002935562014ea13f7962fcc06627766ab006c8f40808feebcfb"

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
