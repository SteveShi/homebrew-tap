cask "macssh" do
  version "1.7.6"
  sha256 "581c013d34deee88090d3a906a4b7bbf0cfdb26c3cd89dc1cb1cbafa32e5b50d"

  url "https://github.com/SteveShi/MacSSH/releases/download/v#{version}/MacSSH.dmg"
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
