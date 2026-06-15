cask "allcleaner" do
  version "1.5.0"
  sha256 "142215c7f06769f2aff18d6ca5bad48ecfa8518282c59bffab685d02adf74425"

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
