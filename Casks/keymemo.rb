cask "keymemo" do
  version "1.3.0"
  sha256 "a61bd849d2ddf2190ef6476874000cd6c2517b1532b43cadd12203cf5fc2d840"

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
