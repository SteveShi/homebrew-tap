cask "whisky" do
  version "3.0.1"
  sha256 "30ab321f6e7ff1517ba9a17915d7bbdff546d1de4a6b6ef773a52a7fc03db91e"

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
