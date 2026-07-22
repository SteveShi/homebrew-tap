cask "macssh" do
  version "1.9.4"
  sha256 "c3e66d7828c2f65c0e33756951bb08bf991329078da7e9d698b0e498c1c7bde6"

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
