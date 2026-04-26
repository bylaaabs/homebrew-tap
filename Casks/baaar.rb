# Source for the bylaaabs/homebrew-tap cask.
#
# Copy this file to https://github.com/bylaaabs/homebrew-tap/Casks/baaar.rb
# on each release, updating `version` and `sha256`. Users install with:
#
#   brew tap bylaaabs/tap
#   brew install --cask baaar

cask "baaar" do
  version "0.3.0-alpha.5"
  sha256 "f283d643fdf2adcfb440f26e68e8c4d83ac3903f818b2d2a50c8026f3c761eba"

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
