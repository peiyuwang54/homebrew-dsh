cask "deepseek-harness-cli" do
  version "0.1.0-rc.8"

  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"

  url "https://github.com/peiyuwang54/deepseek-harness-cli/releases/download/deepseek-harness-cli-v#{version}/deepseek-harness-cli-#{arch}-#{os}.tar.gz"
  name "deepseek-harness-cli"
  desc "deepseek-harness-cli: profile boot, plugin management, and shipped terminal/browser aliases"
  homepage "https://github.com/peiyuwang54/deepseek-harness-cli"

  on_macos do
    on_arm do
      sha256 "a7498f6b49838b2ee5b83b544c1526977912a4241b5897cc50d32333ff077b7d"
    end
    on_intel do
      sha256 "de960b2d794402d457522ee1657550ca8698af2dbaa49c5f7b55ebeaae849a7b"
    end
  end

  on_linux do
    on_arm do
      sha256 "a398effa4c05ae28aaa8d0050f108a3bb5f1742f252632d4a2b6ee7269d19eb2"
    end
    on_intel do
      sha256 "4d9b1176a990d645ea12e88e5ee40be32ee5be42b5e3e2d173828d89b95feb72"
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
