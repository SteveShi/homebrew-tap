cask "essays" do
  version "2.7.1"
  sha256 "ff357ec7b0dde2bfd498fbcabde357066d738fd05588e64d58cbb88e4a4ea963"

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
