cask "macssh" do
  version "2.0.3"
  sha256 "15efadf1166bc37e6c3b4ccef32d9283042279ca623fb1f069d27b541460a4ae"

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
