cask "deepseek-harness-cli" do
  version "0.1.0-rc.11"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "e176fa97a4ee3e01e10d10792e4e056f9792bf1b58396ab1daad95f92a42c123"
    end
    on_intel do
      sha256 "512eded35c5f4397d0f17138b934f956deaf3759729f1acde8bba7a5ce409b5e"
    end
  end

  on_linux do
    on_arm do
      sha256 "fd55696a7bd918280c80cc0d759c8187713f820989657a69ad9cc5c27913eb4c"
    end
    on_intel do
      sha256 "14a30035698949c729c720e7d1d07b9598f58d6832033248743113d971cde728"
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
