cask "essays" do
  version "2.6.0"
  sha256 "c7ac71526605ceb3731b636d102e3d5abb8d518c7479b86cda8048c1d5a83a4c"

  url "https://github.com/SteveShi/Essays/releases/download/v#{version}/Essays-AppleSilicon.dmg"
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
