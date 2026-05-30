cask "essays" do
  version "2.8.1"
  sha256 "6bd2925c03d37eba30fd4c3fc743ac63020a64f25678c4ab4e122eff6c382937"

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
