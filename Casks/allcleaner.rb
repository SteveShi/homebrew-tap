cask "allcleaner" do
  version "1.5.0"
  sha256 "c34470b721d093f45aaa5af98ce46fad1b41920d9e2fb81371086f7ed5d08ae2"

  url "https://github.com/SteveShi/AllCleaner/releases/download/v#{version}/AllCleaner-#{version}-Universal.dmg"
  name "AllCleaner"
  desc "Find and remove the files macOS apps leave behind after you uninstall them"
  homepage "https://github.com/SteveShi/AllCleaner"

  app "AllCleaner.app"

  zap trash: [
    "~/Library/Application Support/com.steveshi.allcleaner",
    "~/Library/Caches/com.steveshi.allcleaner",
    "~/Library/Preferences/com.steveshi.allcleaner.plist",
    "~/Library/Saved Application State/com.steveshi.allcleaner.savedState",
  ]
end
