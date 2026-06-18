cask "whisky" do
  version "3.0.4"
  sha256 "337b18a32a57e51c815369574339c32cad39fd07f29dcb27fd4a7a8ff5d9ed35"

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
