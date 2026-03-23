cask "myworkstudio" do
  version "1.4.1"
  sha256 "d0a977c2d391842e9ee2c05a6b8a217e5a88050f8ce6937f821458acad566cea"

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
