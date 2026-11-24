# Tesselix Homebrew tap

Homebrew packages for [Tesselix](https://github.com/tesselix) projects.

## gtty

[gtty](https://github.com/tesselix/gtty), the True Graphic Virtual
Terminal. Apple Silicon, macOS 13 or later.

```sh
brew install --cask tesselix/tap/gtty
```

`brew upgrade` keeps it up to date. Only stable releases come here.

`Casks/gtty.rb` is written by gtty's release workflow from
[`packaging/homebrew/gtty.rb.in`](https://github.com/tesselix/gtty/blob/main/packaging/homebrew/gtty.rb.in):
change it there. Issues go to
[gtty's issues](https://github.com/tesselix/gtty/issues).

## License

The files in this repository are under the BSD 2-Clause License
([LICENSE](LICENSE)). gtty itself is GPL-3.0-or-later.
