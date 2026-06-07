# `brew lser` — Homebrew Leftover Scanner

`brew lser` scans your Mac for **leftover files** left behind by apps you've
uninstalled, using the `zap` rules maintained in
[Homebrew Cask](https://github.com/Homebrew/homebrew-cask). It only *reports*
leftovers — it never deletes anything itself.

> Adapted from [jysperm/homebrew-leftover-scanner](https://github.com/jysperm/homebrew-leftover-scanner),
> updated for the latest Homebrew (loads casks from the API; works on Homebrew 5.x / Ruby 4.x).

## Installation

```bash
brew tap SteveShi/tap
```

The command is available immediately — there's no `brew install` step.

## Usage

```bash
brew lser
```

It checks every cask Homebrew knows about (7000+) and prints any files still on
disk that belong to casks you don't currently have installed.

## Full Disk Access (required)

The scanner reads paths across your whole home and library tree, so your
terminal needs **Full Disk Access**:

> System Settings → Privacy & Security → Full Disk Access → enable your terminal
> (Terminal, iTerm, Ghostty, …)

Without it, unreadable paths are skipped and you'll see permission warnings.

## Understanding the output

```
==> 7702 casks to scan ...
==> Installed from cask:
google-chrome, iterm2, telegram, ...
==> Installed from other ways:
spotify, setapp, ...
==> Found leftovers from bitbar, get rid of them via:
==> brew uninstall -f --zap bitbar
/Users/you/Library/Caches/com.matryer.BitBar (trash 3 files, 84.2KB)
/Users/you/Library/Preferences/com.matryer.BitBar.plist (trash 531B)
```

| Section | Meaning |
| :--- | :--- |
| **Installed from cask** | Casks Homebrew installed and still tracks — their files are skipped. |
| **Installed from other ways** | The app is on disk but wasn't installed via Homebrew — its files are skipped too. |
| **Found leftovers from …** | A cask you *don't* have installed, but whose files are still on disk. |

Each leftover line shows the path, whether the rule classifies it as `delete`
or `trash`, and its size on disk.

## Removing leftovers (manual & opt-in)

`brew lser` **never deletes anything**. To actually remove a reported app's
leftovers, run the suggested command yourself (at your own risk):

```bash
brew uninstall -f --zap <token>
```

## How it works

Most casks declare a `zap` stanza listing the caches, preferences, and support
files an app creates. Homebrew doesn't remove these on a normal `uninstall`, so
they accumulate. `brew lser` resolves every cask's `zap`/`uninstall`
`trash:`/`delete:` paths, skips anything still owned by an installed cask, and
reports the rest.

```ruby
cask "bitbar" do
  # ...
  zap trash: [
    "~/Library/Caches/com.matryer.BitBar",
    "~/Library/Preferences/com.matryer.BitBar.plist",
  ]
end
```

If a `zap` rule is missing or incomplete, please contribute it upstream to
[homebrew-cask](https://github.com/Homebrew/homebrew-cask).

## Tap trust (optional)

External commands from third-party taps run directly by default. If you've set
`HOMEBREW_REQUIRE_TAP_TRUST=1`, trust this tap once first:

```bash
brew trust SteveShi/tap
```

## Known limitations

- Apps installed through a launcher/updater (e.g. JetBrains IDEs via JetBrains
  Toolbox) may be reported as uninstalled.
- Detecting `launchctl` / login-item leftovers isn't implemented yet.

## Requirements

- macOS with Homebrew (tested on Homebrew 5.x, macOS 26).
