cask "myworkstudio" do
  version "3.0.6"
  sha256 "637ffa5c115750af2b6ae9b6f5be7c6e7f9c04cb5e49f97006f985515c28de32"

  url "https://github.com/jjunhaa0211/Doffice/releases/download/v#{version}/Doffice-v#{version}.zip"
  name "Doffice (formerly MyWorkStudio)"
  name "도피스"
  desc "Claude Code 세션을 시각적으로 관리하는 macOS 네이티브 앱 — Doffice로 이름이 변경되었습니다"
  homepage "https://github.com/jjunhaa0211/Doffice"

  depends_on macos: ">= :sonoma"

  app "Doffice.app"

  zap trash: [
    "~/Library/Preferences/com.junha.doffice.plist",
    "~/Library/Preferences/com.junha.workman.plist",
    "~/Library/Application Support/WorkMan",
  ]
end
