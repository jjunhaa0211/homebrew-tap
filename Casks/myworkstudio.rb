cask "myworkstudio" do
  version "2.0.1"
  sha256 "c80010e37fe30dde7782c0b975d1f58de1320e7520722130644354af830e3ee4"

  url "https://github.com/jjunhaa0211/MyWorkStudio/releases/download/v#{version}/MyWorkStudio-v#{version}.zip"
  name "MyWorkStudio"
  desc "Claude Code 세션을 시각적으로 관리하는 macOS 네이티브 앱"
  homepage "https://github.com/jjunhaa0211/MyWorkStudio"

  depends_on macos: ">= :sonoma"

  app "WorkManApp.app", target: "MyWorkStudio.app"

  zap trash: [
    "~/Library/Preferences/com.junha.WorkManApp.plist",
    "~/Library/Application Support/WorkMan",
  ]
end
