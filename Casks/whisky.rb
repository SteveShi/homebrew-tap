cask "whisky" do
  version "3.0.1"
  sha256 "5de99f4d74d0705c43f5ba4168e266e2f1395eac83adb24bbbe42aaf85b2b7b5"

  url "https://github.com/SteveShi/Whisky/releases/download/v#{version}/Whisky-#{version}-AppleSilicon.dmg"
  name "Whisky"
  desc "Wine wrapper for macOS built with SwiftUI"
  homepage "https://github.com/SteveShi/Whisky"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Whisky.app"

  zap trash: [
    "~/Library/Application Support/com.steveshi.Whisky",
    "~/Library/Caches/com.steveshi.Whisky",
    "~/Library/HTTPStorages/com.steveshi.Whisky",
    "~/Library/HTTPStorages/com.steveshi.Whisky.binarycookies",
    "~/Library/Preferences/com.steveshi.Whisky.plist",
    "~/Library/Saved Application State/com.steveshi.Whisky.savedState",
  ]
end
