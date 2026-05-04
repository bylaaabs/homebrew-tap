cask "speaaak" do
  version "0.1.0-alpha.2"
  sha256 "11c8a3da0ba4ae43bcc859761c473fec1afe5ff12eaa8c803c919d95ecfb3a95"

  url "https://github.com/bylaaabs/speaaak/releases/download/v#{version}/Speaaak-v#{version}.zip",
      verified: "github.com/bylaaabs/speaaak/"
  name "Speaaak"
  desc "Native, on-device dictation for macOS"
  homepage "https://github.com/bylaaabs/speaaak"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Speaaak.app"

  zap trash: [
    "~/Library/Application Support/Speaaak",
    "~/Library/Caches/com.aaangelmartin.Speaaak",
    "~/Library/Caches/Sparkle",
    "~/Library/HTTPStorages/com.aaangelmartin.Speaaak",
    "~/Library/Preferences/com.aaangelmartin.Speaaak.plist",
    "~/Library/Saved Application State/com.aaangelmartin.Speaaak.savedState",
  ]
end
