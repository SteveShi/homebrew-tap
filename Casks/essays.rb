cask "essays" do
  version "2.2.4"
  sha256 "1afe5012b68a55ca3b949c52bdfc0be2ff3b0094ab81cbbc73ff36a73c86d02b"

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
