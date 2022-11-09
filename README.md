# Min CV

Minimalistic code to generate an HTML+CSS resume webpage.

Uses [sakura](https://github.com/oxalorg/sakura) and [normalize.css](https://github.com/necolas/normalize.css).

## Install

Install [mustache](https://github.com/mustache/mustache) and run:

```sh
make index.html
```

`./public` folder is now ready for hosting.

## Reuse

* Fork this repo
* Modify `hash.json` to your liking
* [Install](#install) (or let github actions generate the `public` folder)
* Host `public` folder

## Contributing

Quickest setup is to develop using vscode's devcontainer.
Then on the terminal run:

```sh
./rundev.sh
```
