# homebrew-tap

Homebrew tap for [laaabs](https://laaabs.com) — a small studio shipping native, open-source apps for Apple platforms.

## Usage

Install any laaabs app directly:

```sh
brew install --cask bylaaabs/tap/<cask-name>
```

That's equivalent to `brew tap bylaaabs/tap && brew install --cask <cask-name>`.

## Available casks

| Cask | Description | Repo |
|---|---|---|
| [`baaar`](Casks/baaar.rb) | Native macOS menu-bar manager — open-source alternative to Ice / Bartender | [bylaaabs/baaar](https://github.com/bylaaabs/baaar) |
| [`clipboaaard`](Casks/clipboaaard.rb) | Native, open-source clipboard manager for macOS | [bylaaabs/clipboaaard](https://github.com/bylaaabs/clipboaaard) |
| [`speaaak`](Casks/speaaak.rb) | Native macOS dictation — on-device by default, opt-in cloud tiers | [bylaaabs/speaaak](https://github.com/bylaaabs/speaaak) |

_More coming soon._

## Quick install

```sh
brew install --cask bylaaabs/tap/clipboaaard
brew install --cask bylaaabs/tap/baaar
brew install --cask bylaaabs/tap/speaaak
```

## Uninstall

```sh
brew uninstall --cask <cask-name>
brew untap bylaaabs/tap
```

The `zap` stanza in each cask cleans up related caches and preferences.

## License

Tap configuration: MIT. Each linked app retains its own license (see its repo).
