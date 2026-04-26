# Source for the bylaaabs/homebrew-tap cask.
#
# Copy this file to https://github.com/bylaaabs/homebrew-tap/Casks/baaar.rb
# on each release, updating `version` and `sha256`. Users install with:
#
#   brew tap bylaaabs/tap
#   brew install --cask baaar

cask "baaar" do
  version "0.3.0-alpha.3"
  sha256 "88510e17682a1fb9452beb1668685e9defffb3211d23b87edde8773bd81363b3"

  url "https://github.com/bylaaabs/baaar/releases/download/v#{version}/Baaar-#{version}.dmg"
  name "Baaar"
  desc "Reliable, native menu bar manager for macOS — open-source alternative to Ice and Bartender"
  homepage "https://github.com/bylaaabs/baaar"

  depends_on macos: ">= :sequoia"

  app "Baaar.app"

  zap trash: [
    "~/Library/Application Support/Baaar",
    "~/Library/Caches/com.aaangelmartin.Baaar",
    "~/Library/Caches/com.aaangelmartin.Baaar.ShipIt",
    "~/Library/Preferences/com.aaangelmartin.Baaar.plist",
    "~/Library/Saved Application State/com.aaangelmartin.Baaar.savedState",
  ]
end
