cask "agave" do
  version "0.1"
  sha256 "19f7c771490c0d7f89a665218725f6f1867f3b96d49ae9dcdd12eb5d3a66fb5d"

  url "https://github.com/SteveShi/Agave/releases/download/v#{version}/Agave-#{version}-Universal.dmg"
  name "Agave"
  desc "Modern native container client for macOS"
  homepage "https://github.com/SteveShi/Agave"

  app "Agave.app"

  zap trash: [
    "~/Library/Application Support/Agave",
    "~/Library/Preferences/com.steveshi.agave.plist",
    "~/Library/Saved Application State/com.steveshi.agave.savedState",
  ]
end
