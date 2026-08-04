cask "rip" do
  version "1.2.0"
  sha256 "df64cb6ecf1796156a08afdae4331b946d5ea9c8f658ab1a94063307fc4f3d97"

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

  depends_on macos: :ventura

  app "RIP.app"

  # 공증(notarization)을 못 하는 앱이라 격리 딱지가 붙은 채로 열면
  # macOS 15+ 는 실행을 막는 데 그치지 않고 **앱을 지워 버린다**.
  # (2026-08-04 실제로 확인: open 3초 뒤 /Applications 에서 사라짐)
  # 그래서 설치 직후 딱지를 떼어 둔다. 사용자가 매번 터미널을 치지 않아도 되게.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/RIP.app"],
                   sudo: false
  end

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
    RIP은 Apple 개발자 인증서로 서명·공증되어 있지 않습니다(개인 프로젝트라 공증 계정이 없습니다).
    설치할 때 격리 딱지를 떼어 두었으므로 그냥 열면 됩니다.

    혹시 "손상되었다"며 안 열리면:

      xattr -dr com.apple.quarantine "#{appdir}/RIP.app"

    ※ macOS 15부터는 공증 안 된 앱을 격리 딱지가 붙은 채로 열면
       실행이 막히는 데서 끝나지 않고 앱이 지워질 수 있습니다.
       DMG를 직접 내려받으셨다면 **열기 전에** 위 명령을 먼저 실행하세요.
  EOS
end
