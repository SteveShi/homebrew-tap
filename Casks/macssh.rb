cask "macssh" do
  version "2.0.13"
  sha256 "300fec6c5d65ab49bea618f46c80ac807980ed58c8f23f0b3e91fef1dc67e5ee"

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
