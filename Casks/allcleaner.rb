cask "allcleaner" do
  version "1.0.4"
  sha256 "7bda2345f436e41201192bf57deef4eeda2513da0333d8ef70cf215c67d48837"

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
