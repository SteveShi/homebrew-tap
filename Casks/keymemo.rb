cask "keymemo" do
  version "1.3.0"
  sha256 "8dd75fe3f88d32e08bf4d54a49abcd2ea0e8b58e597d2f55a25bca4d23f4c381"

  url "https://github.com/SteveShi/KeyMemo/releases/download/v#{version}/KeyMemo-#{version}-Universal.dmg"
  name "KeyMemo"
  desc "Local software license and subscription manager"
  homepage "https://github.com/SteveShi/KeyMemo"

  app "KeyMemo.app"

  zap trash: [
    "~/Library/Application Support/KeyMemo",
    "~/Library/Preferences/com.steveshi.keymemo.plist",
    "~/Library/Saved Application State/com.steveshi.keymemo.savedState",
  ]
end
