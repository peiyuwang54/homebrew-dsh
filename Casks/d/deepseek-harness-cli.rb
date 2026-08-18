cask "deepseek-harness-cli" do
  version "0.1.0-rc.9"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "60c4b7267e1b3ab351b528d913bcdc81215a64b343d6a105af16ab10e5174a1e"
    end
    on_intel do
      sha256 "128e7a505ebf6d5fc38aebc93884d234f416097421dd56ca3e24a66964923496"
    end
  end

  on_linux do
    on_arm do
      sha256 "469d0f95bb3138d1b87b37b2adc366fad06f8835f4629276ec43a396586549a8"
    end
    on_intel do
      sha256 "2d2d9b233aee6fcff3367ad1131e9c27be207fad30cd6f270bb931f424756833"
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
