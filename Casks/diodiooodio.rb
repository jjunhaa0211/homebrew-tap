cask "diodiooodio" do
  version "1.0.1"
  sha256 "09e204834766322547f4a47640beb42940df5ccad0f49e35ee411ba20ed2c12f"

  url "https://github.com/jjunhaa0211/diodiooodio/releases/download/v#{version}/diodiooodio-#{version}.zip"
  name "diodiooodio"
  desc "Per-app volume control for macOS"
  homepage "https://github.com/jjunhaa0211/diodiooodio"

  depends_on macos: ">= :sonoma"

  app "diodiooodio.app"
end
