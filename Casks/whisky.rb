cask "whisky" do
  version "3.0.5"
  sha256 "39e4ca05ec4d5a5ca0a3b4102657417689cc8b51c99f5cb85775c8f32a4c52f8"

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
