cask "keymemo" do
  version "1.1.0"
  sha256 "7346a71d11fb82ea966e6595e4f497a5377f0c27ac629ec2d565447022db7f4a"

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
