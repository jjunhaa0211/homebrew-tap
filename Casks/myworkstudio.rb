cask "myworkstudio" do
  version "1.0.0"
  sha256 "d1b70e6a96160145f9ce8d277dfc06a4ef370ee085e7f34a75ee30ddd285b0c0"

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
