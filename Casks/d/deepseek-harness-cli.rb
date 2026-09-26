cask "deepseek-harness-cli" do
  version "0.1.0-rc.15"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "f21eb6e6f47dfb1b21a689089daa99adc0ee3084314edde989b582357727ffc7"
    end
    on_intel do
      sha256 "ed370403011fc77ba749e2b27fe91f5656ac0ffc52297e4984a2d737b2df4748"
    end
    binary "bin/deepseek-harness-cli-spawn-helper"
  end

  on_linux do
    on_arm do
      sha256 "162979dcc40f34d71d232be660ad3507c263499a3cb3cd2586f52589aa25fc86"
    end
    on_intel do
      sha256 "16c5a3b75e0b8e23c5ec302f7f692964bc604bf53c44bbdf24514b67c78dc5a3"
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
