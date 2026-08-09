cask "macssh" do
  version "1.9.14"
  sha256 "6563995b1f20eabefebc0268787bf63390736f53bd102c0c9ac2234ad8c80586"

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
