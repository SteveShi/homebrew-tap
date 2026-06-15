cask "allcleaner" do
  version "1.5.0"
  sha256 "4ff3346fbe74fed13d255145d0d34b50afae8e5209abfcad6c58a181103c1aee"

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
