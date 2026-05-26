cask "macssh" do
  version "1.5.3"
  sha256 "5b79fb3bf76ddd347e5f0b03716528764a44f22f7cf2381030f91785cd304ca7"

  url "https://github.com/SteveShi/MacSSH/releases/download/v#{version}/MacSSH-AppleSilicon.dmg"
  name "MacSSH"
  desc "A modern SSH & SFTP client for macOS powered by the Ghostty terminal engine"
  homepage "https://github.com/SteveShi/MacSSH"

  app "MacSSH.app"

  zap trash: [
    "~/Library/Application Support/MacSSH",
    "~/Library/Preferences/com.example.MacSSH.plist",
    "~/Library/Saved Application State/com.example.MacSSH.savedState",
  ]
end
