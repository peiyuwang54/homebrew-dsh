cask "deepseek-harness-cli" do
  version "0.1.0-rc.13"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "1d20ebcc5687a0300e55b1bada859105461a376468fbb0b660d8bf81a513b328"
    end
    on_intel do
      sha256 "ac0f349d2eb448165bdff5378f4c7798540269d8d029c26389ce3643a52b64b4"
    end
    binary "bin/deepseek-harness-cli-spawn-helper"
  end

  on_linux do
    on_arm do
      sha256 "b1b8572e869e26e63d30dae757eee2f6445ef44c29a4b336e9b7773e9d7c119f"
    end
    on_intel do
      sha256 "9277af5f5e94cec16a1a8dabb5f10ebdbba393d2d025f6d9c3f08deef32f9599"
    end
  end

  binary "bin/deepseek-harness-cli", target: "deepseek"
  binary "bin/deepseek-harness-cli", target: "dsh"
  binary "bin/deepseek-harness-cli"
  binary "bin/deepseek-harness-cli-rg"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^deepseek-harness-cli-v(\d+\.\d+\.\d+(?:-rc\.\d+)?)$/i)
  end
end
