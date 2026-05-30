cask "essays" do
  version "2.8.1"
  sha256 "e9145610d56262e7e88e87d027f4d7dc89114a0291b7d536b3a8c814f1ab1842"

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
