# Homebrew-scriptcs

A [scriptcs](http://scriptcs.net/)
v0.13.3 formulae for the [Homebrew](http://brew.sh/)
package manager based on a [this](https://gist.github.com/akunzai/bbcac93646ca08bd8569)
gist by [akunzai](https://github.com/akunzai).

## Installation

[Mono](http://www.mono-project.com/)
>= 3.0.0 is a dependency of scriptcs so this formula will install the latest mono as well.

Just `brew tap c0ntinuum/homebrew-scriptcs` and then `brew install scriptcs`.

You can also install directly via a URL:

```
brew install https://raw.github.com/c0ntinuum/homebrew-scriptcs/master/scriptcs.rb
```

## Testing

Run ```brew test scriptcs```.
The output should be:

```
Testing scriptcs
```

Run ```scriptcs```,
type ```Console.WriteLine("Hello, world!");```
and hit ```ENTER```.
The output should be:

```
Hello, world!
```

## Docs

Use `brew help`, `man brew`, or the Homebrew [README](https://github.com/Homebrew/homebrew/tree/master/share/doc/homebrew#readme).
