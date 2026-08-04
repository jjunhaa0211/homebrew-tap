cask "rip" do
  version "1.1.0"
  sha256 "8212ffb1cab1b085fc7334f20248c282d4270b4bbea37aa15a1c5c17179fa433"

  url "https://github.com/jjunhaa0211/RIP/releases/download/v#{version}/RIP-#{version}.dmg",
      verified: "github.com/jjunhaa0211/RIP/"
  name "RIP"
  name "Resigned In Peace"
  desc "먼저 나간 사람들을 기록하고 내 차례를 세는 앱"
  homepage "https://github.com/jjunhaa0211/RIP"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ":ventura"

  app "RIP.app"

  # 앱을 지울 때 같이 지울 것들.
  # 명단과 기록은 사용자 데이터이므로 `brew uninstall --zap` 을 명시적으로 했을 때만 지운다.
  zap trash: [
    "~/Library/Application Support/RIP",
    "~/Library/Group Containers/group.kr.co.hygino.rip",
    "~/Library/Preferences/kr.co.hygino.rip.plist",
    "~/Library/Caches/kr.co.hygino.rip",
    "~/Library/HTTPStorages/kr.co.hygino.rip",
  ]

  caveats <<~EOS
    RIP은 Apple 개발자 인증서로 서명되어 있지 않습니다.
    처음 열 때 막히면 아래 중 하나로 여세요.

      1) 앱을 우클릭 → 열기 → 다시 열기
      2) xattr -dr com.apple.quarantine "#{appdir}/RIP.app"

    격리 딱지 없이 바로 깔고 싶다면:

      brew install --cask --no-quarantine rip
  EOS
end
