# Zeul Homebrew Tap

Homebrew tap for WebFinder and related tools.

## Install

```bash
brew tap zeulewan/tap
brew install --cask webfinder
```

Or without tapping first:

```bash
brew install --cask zeulewan/tap/webfinder
```

For CLI-only installs on macOS or Linuxbrew:

```bash
brew install zeulewan/tap/web-finder
```

## Packages

### Casks

- `webfinder` - macOS menu bar app plus CLI for discovering and publishing WebFinder services on Tailscale.

### Formulae

- `web-finder` - CLI for publishing this device's local web services to WebFinder clients on Tailscale.

## Update / Uninstall

```bash
brew update
brew upgrade --cask webfinder
brew upgrade web-finder
brew uninstall --cask webfinder
brew uninstall web-finder
```
