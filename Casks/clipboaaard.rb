cask "clipboaaard" do
  version "0.1.0-alpha.1"
  sha256 "2b31579b05da255bd96130576708dd727132fe349aaa559993a0fe346f6ff097"

  url "https://github.com/bylaaabs/clipboaaard/releases/download/v#{version}/Clipboaaard-v#{version}.zip",
      verified: "github.com/bylaaabs/clipboaaard/"
  name "Clipboaaard"
  desc "Native, open-source clipboard manager for macOS"
  homepage "https://github.com/bylaaabs/clipboaaard"

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Clipboaaard.app"

  zap trash: [
    "~/Library/Application Support/Clipboaaard",
    "~/Library/Caches/com.aaangelmartin.Clipboaaard",
    "~/Library/Caches/Sparkle",
    "~/Library/HTTPStorages/com.aaangelmartin.Clipboaaard",
    "~/Library/Preferences/com.aaangelmartin.Clipboaaard.plist",
    "~/Library/Saved Application State/com.aaangelmartin.Clipboaaard.savedState",
  ]
end
