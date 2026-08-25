cask "macssh" do
  version "1.9.17"
  sha256 "fd0931554db288fbf340896cefe74b256f0da41791350e3b80d7b33ecdcc6c31"

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
