cask "doffice" do
  version "0.0.37"
  sha256 :no_check

  url "https://github.com/jjunhaa0211/Doffice/releases/download/v#{version}/Doffice.app.zip"
  name "Doffice"
  name "도피스"
  desc "Claude Code 세션을 시각적으로 관리하는 macOS 네이티브 앱"
  homepage "https://github.com/jjunhaa0211/Doffice"

  depends_on macos: ">= :sonoma"

  app "Doffice.app"

  zap trash: [
    "~/Library/Preferences/com.junha.doffice.plist",
    "~/Library/Preferences/com.junha.workman.plist",
    "~/Library/Application Support/WorkMan",
    "~/Library/Caches/com.junha.doffice",
  ]
end
