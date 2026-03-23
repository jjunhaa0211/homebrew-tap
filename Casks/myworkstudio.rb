cask "myworkstudio" do
  version "1.3.0"
  sha256 "8635053a3ce21daa7600fd993413007f1122c6f62b939a9b6ff983396e891869"

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
