cask "dockpals" do
  version "0.1.0"
  sha256 "83092abf1805806ceb21c4ca10e089b50a29fb3ca7e031ed5992e66733bd3a83"

  url "https://github.com/strahlenguy/dockpals/releases/download/v#{version}/DockPals-#{version}.zip"
  name "DockPals"
  desc "Pixel-art Pokemon pets that walk and play on top of the Dock"
  homepage "https://github.com/strahlenguy/dockpals"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "DockPals.app"

  uninstall quit: "io.github.strahlenguy.DockPals"

  zap trash: [
    "~/Library/Caches/DockPals",
    "~/Library/Preferences/io.github.strahlenguy.DockPals.plist",
  ]
end
