cask "deepseek-harness-cli" do
  version "0.1.0-rc.5"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "7d0ee105a79747f58ccf2531c12407a3baf83a4e7912d4fb2070a62a27d9c109"
    end
    on_intel do
      sha256 "7059506dc393864f583fe467c81e009b6b629b813b969806647cbca402e61beb"
    end
  end

  on_linux do
    on_arm do
      sha256 "9bffbe86ae9c81a5534aa7dbd8493641a8966e139a177327d64abeb02ef5c15e"
    end
    on_intel do
      sha256 "90eda4deffa1c6968ee37290af75ebf1c198bd61ca22c488301c599fa77473fa"
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
