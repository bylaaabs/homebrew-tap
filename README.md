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
| [`clipboaaard`](Casks/clipboaaard.rb) | Native, open-source clipboard manager for macOS | [bylaaabs/clipboaaard](https://github.com/bylaaabs/clipboaaard) |

_More coming soon._

## Quick install

```sh
brew install --cask bylaaabs/tap/clipboaaard
```

## Uninstall

```sh
brew uninstall --cask <cask-name>
brew untap bylaaabs/tap
```

The `zap` stanza in each cask cleans up related caches and preferences.

## License

Tap configuration: MIT. Each linked app retains its own license (see its repo).
