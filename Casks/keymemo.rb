cask "keymemo" do
  version "1.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
