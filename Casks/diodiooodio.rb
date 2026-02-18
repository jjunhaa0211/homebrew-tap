cask "diodiooodio" do
  version "1.0.0"
  sha256 "4aa7e14a153bafd1ed62e9d2a23084e63a4db58fdc225a25e8c6627779fb8a1a"

  url "https://github.com/jjunhaa0211/diodiooodio/releases/download/v#{version}/diodiooodio-#{version}.zip"
  name "diodiooodio"
  desc "Per-app volume control for macOS"
  homepage "https://github.com/jjunhaa0211/diodiooodio"

  depends_on macos: ">= :sonoma"

  app "diodiooodio.app"
end
