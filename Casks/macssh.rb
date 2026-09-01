cask "macssh" do
  version "2.0.9"
  sha256 "06bc7e63bb6f68c5425bd47679869a6ccd40da5ea6aab46e1f2f5f1714e1ed7b"

  url "https://github.com/SteveShi/MacSSH/releases/download/v#{version}/MacSSH-#{version}-arm64.dmg"
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
