cask "macssh" do
  version "2.0.4"
  sha256 "9848fd69a95ad9367cb86494a05f478bcda1e32c253b42a8652cc2e1911d883e"

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
