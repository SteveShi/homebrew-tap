cask "essays" do
  version "2.0.4"
  sha256 "6d049898fc74dbf3ad35dd7e2d0213e6c1caa6998161829e4443ae8be41a29f3"

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
