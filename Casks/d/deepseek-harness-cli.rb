cask "deepseek-harness-cli" do
  version "0.1.0-rc.7"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "928cb3a8743054ead458cc1e07af34c92e3a0d5644efc09d0f75adbd9c023806"
    end
    on_intel do
      sha256 "181482b5cb58c1f7a9d3aacab07121a9c5cb912c07c8f22e10ec8b513df29398"
    end
  end

  on_linux do
    on_arm do
      sha256 "c434a03512f6f350aeaddfb8c8b9fba571a7c871f37833fa20ba83368ce4a081"
    end
    on_intel do
      sha256 "1c7253a705984edffbbe59be0536478b05f3ed32b9eb757bc9fcddf7899600af"
    end
  end

  binary "bin/deepseek-harness-cli", target: "deepseek"
  binary "bin/deepseek-harness-cli", target: "dsh"
  binary "bin/deepseek-harness-cli"

  livecheck do
    url :url
    strategy :github_releases
    regex(/^deepseek-harness-cli-v(\d+\.\d+\.\d+(?:-rc\.\d+)?)$/i)
  end
end
