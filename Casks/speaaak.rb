cask "speaaak" do
  version "0.1.0-alpha.3"
  sha256 "9c243fbed7c5681bd2ddb45eb0aa64e21b025e0c2e9591bb922757d12e7c4c1a"

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
