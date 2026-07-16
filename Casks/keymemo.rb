cask "keymemo" do
  version "1.2.0"
  sha256 "3a1ed5edd3570509f4cfb11de691b692d518f1aedb2912737f1807a391445e25"

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
