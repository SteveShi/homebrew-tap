# Steve's Homebrew Tap

A personal Homebrew tap for distributing and updating my macOS applications.

## How to Use

### 1. Add this Tap

```bash
brew tap SteveShi/tap
```

### 2. Install Applications

```bash
# Install AllCleaner
brew install --cask allcleaner

# Install MDWriter
brew install --cask mdwriter

# Install Maltex
brew install --cask maltex

# Install Inkies
brew install --cask inkies

# Install Essays
brew install --cask essays

# Install MacSSH
brew install --cask macssh

# Install PlistEditor
brew install --cask plisteditor
```

## Software List

| Application | Description |
| :--- | :--- |
| **AllCleaner** | Find and remove the files macOS apps leave behind after you uninstall them |
| **MDWriter** | A powerful native Markdown editor for macOS |
| **Maltex** | Aria2-based Downloader for macOS |
| **Inkies** | An editor for ink scripts on macOS |
| **Essays** | A writing app for macOS |
| **MacSSH** | SSH client for macOS |
| **PlistEditor** | Property list editor with a synced outline and source view |

## Commands

| Command | Description |
| :--- | :--- |
| **[`brew lser`](docs/lser.md)** | Scan for leftover files from uninstalled Casks, using Homebrew Cask's `zap` rules. |

```bash
brew lser
```

See **[docs/lser.md](docs/lser.md)** for the full guide — usage, output explained, and Full Disk Access setup.

## Auto-Update

These Casks are automatically updated via GitHub Actions whenever a new release is tagged in their respective repositories.
