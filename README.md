# homebrew-dsh

Homebrew tap for [deepseek-harness-cli](https://github.com/peiyuwang54/deepseek-harness-cli), a single-file
command-line agent harness for macOS (`arm64`, `x64`) and Linux (`arm64`, `x64`).

## Install

```sh
brew tap peiyuwang54/dsh
brew install peiyuwang54/dsh/deepseek-harness-cli
```

The `Casks/d/deepseek-harness-cli.rb` cask is regenerated and pushed by the
[`deepseek-harness-cli` release workflow](https://github.com/peiyuwang54/deepseek-harness-cli/blob/master/.github/workflows/deepseek-harness-cli-release.yml)
on each `deepseek-harness-cli-v*` release; before the first release it is a placeholder.

## Verify

```sh
brew info peiyuwang54/dsh/deepseek-harness-cli
```

## Alternatives

- curl installer: `curl -fsSL https://raw.githubusercontent.com/peiyuwang54/deepseek-harness-cli/master/apps/cli/install/install.sh | sh`
- npm: `npm install -g @peiyuwang54/deepseek-harness-cli`
