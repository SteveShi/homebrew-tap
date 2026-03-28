cask "essays" do
  version "2.1.0"
  sha256 "151a905092b77fa847310275166f757e2f4cae6cb57d45db318f2b70bae55383"

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
