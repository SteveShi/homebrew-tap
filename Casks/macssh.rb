cask "macssh" do
  version "2.0.3"
  sha256 "ed21b458d477a0b46d4e9a6fc4d15ecd1d8b6b23f8ed593a7385bb914a784341"

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
