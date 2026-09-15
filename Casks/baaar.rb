cask "baaar" do
  version "0.1.0"
  sha256 "34154e44cc611e856fd065eed07226efe0856d08f210c982b609695c30b3eb4d"

  url "https://github.com/bylaaabs/baaar/releases/download/v#{version}/baaar-v#{version}.zip",
      verified: "github.com/bylaaabs/baaar/"
  name "baaar"
  desc "Native menu bar manager"
  homepage "https://github.com/bylaaabs/baaar"

  # No Sparkle yet: brew upgrade is the only update path.
  auto_updates false
  # baaar runs on macOS 27 only. Homebrew 7.0 names it :golden_gate, which
  # parses as ">= 27"; older Homebrew does not know the symbol.
  depends_on macos: :golden_gate

  app "baaar.app"

  zap trash: [
    "~/Library/Caches/com.laaabs.baaar",
    "~/Library/Logs/baaar",
    "~/Library/Preferences/com.laaabs.baaar.plist",
    "~/Library/Saved Application State/com.laaabs.baaar.savedState",
  ]
end
