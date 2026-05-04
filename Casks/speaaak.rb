cask "speaaak" do
  version "0.1.0-alpha.1"
  sha256 "2f3d86dce3a28febd5151870506aa14c094d01074b98a9f3679b70b7ebcbadff"

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
