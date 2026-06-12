cask "whisky" do
  version "3.0.3"
  sha256 "3374251d7d9e43bb0fc4f60d72c7bd23a158c1144e66ee2b6c64ee768075f567"

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
