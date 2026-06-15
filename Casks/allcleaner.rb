cask "allcleaner" do
  version "1.0.5"
  sha256 "078768c82629fc592a4dc29b15ef681cd4db1d931a53d72886ecd30c169b5683"

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
