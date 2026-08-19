cask "deepseek-harness-cli" do
  version "0.1.0-rc.12"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "4dd1e98569b4e7165bf8727cb169093b2c9de6573c04012142f3ddbd3698f62d"
    end
    on_intel do
      sha256 "af62ad02ecb52175bd98fec871bfa6b6ac273bc22dec55c9876b3bf1f2746e96"
    end
  end

  on_linux do
    on_arm do
      sha256 "34a78a4160fbf6a21c3d941eae2bb9c65324e1cb0823035cc6f028e3e5a1ebd9"
    end
    on_intel do
      sha256 "ae0d803b1ad59a71338924d66f45e576e2217f4d69ddf8660015f5436a1a94cb"
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
