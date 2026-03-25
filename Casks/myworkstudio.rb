cask "myworkstudio" do
  version "3.0.5"
  sha256 "a0fe4ca8be71f7e0c316b0ca6e9c1c25dbab7e0c3c21f3c8fa033936d50c6d09"

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
