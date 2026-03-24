cask "myworkstudio" do
  version "1.5.1"
  sha256 "2aa7ff47561b93360ff0f10ab1962d855c96afffddc552cf92e0f55e66a7e8e2"

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
