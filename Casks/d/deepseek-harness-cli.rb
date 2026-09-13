cask "deepseek-harness-cli" do
  version "0.1.0-rc.14"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "a998c78a148908267f0bccc5cab154cbae5d4328ca5f5c1f66bfc1b6f02eed42"
    end
    on_intel do
      sha256 "5f86d7ca3c394069f60d20fd771e41335bf4eafb56f3744705bf7d6a6bf2e43a"
    end
    binary "bin/deepseek-harness-cli-spawn-helper"
  end

  on_linux do
    on_arm do
      sha256 "a13b5322cc7edae2ee2dc3c76fd0a6c8a814959fb57b5e178f7c22b346eb2b43"
    end
    on_intel do
      sha256 "cf80e209e14cd24fbb1619d312f29f7aa3b40c15e6a69f6d3988b4d84738eded"
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
