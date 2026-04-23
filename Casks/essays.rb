cask "essays" do
  version "2.2.4"
  sha256 "45e9922a57384c9adec990621ad32e5bfbf9aef1e3e4a02bf31e86204b264c27"

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
