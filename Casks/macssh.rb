cask "macssh" do
  version "1.8.2"
  sha256 "a967250702c0b6d3e494a7af6460d228d5c64f2f74afa93dcd6c20c9553a66f8"

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
