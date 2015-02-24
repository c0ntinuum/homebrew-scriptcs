# Homebrew-scriptcs

A [scriptcs](http://scriptcs.net/) formulae for the [Homebrew](http://brew.sh/) package manager based on a [gist](https://gist.github.com/akunzai/bbcac93646ca08bd8569) by [akunzai](https://github.com/akunzai).

## Versions

* v0.13.3
* v0.13.2

## Installation

[Mono](http://www.mono-project.com/) is a dependency of scriptcs so you either need to have Mono >= 3.0.0 already installed or you should accept the recommended installation of mono when installing scriptcs.

Just `brew tap c0ntinuum/homebrew-scriptcs` and then `brew install scriptcs`.

You can also install directly via a URL:

```
brew install https://raw.github.com/c0ntinuum/homebrew-scriptcs/master/scriptcs.rb
```

## Testing

Run `brew test scriptcs`. The output should be:

```
Testing scriptcs
```

## Docs

Use `brew help`, `man brew`, or the Homebrew [README](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme).
