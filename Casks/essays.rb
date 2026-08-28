cask "essays" do
  version "2.9.1"
  sha256 "216ec0c30a7952fdb0154b607df44ad3b7fc3093524210264ef05f2e5d927197"

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
