# Placeholder cask for the DeepSeek Harness CLI.
# Replaced by the peiyuwang54/deepseek-harness-cli release workflow on each
# deepseek-harness-cli-v* release; no tarballs exist before the first release.
cask "deepseek-harness-cli" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-arm64-macos.tar.gz"

  binary "bin/deepseek-harness-cli"
end
