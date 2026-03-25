cask "myworkstudio" do
  version "3.2.1"
  sha256 "6c80fb999d003da2abac3d1fe946007b4e71260cf26e023830948eb2083da7f9"

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
