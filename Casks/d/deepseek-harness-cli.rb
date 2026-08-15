cask "deepseek-harness-cli" do
  version "0.1.0-rc.6"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "5f68176b2a3a0445a1b2a4b9a25db9f31630bef890ced17ee8bf59f2f94d1514"
    end
    on_intel do
      sha256 "68570f65ff4e2c025ff69f769c2b50c985a94177127b8449aff41b8ab0851e02"
    end
  end

  on_linux do
    on_arm do
      sha256 "a7b3e02d19436540f265dfd0049074aa5d36d9c74e732522ae63d1e11a40f858"
    end
    on_intel do
      sha256 "4a927b723fb7a1ca634f3cf13048d483de1fecab78debe62d8b7160da4b07200"
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
