# Tureng

Tureng shows the meaning of a phrase from [tureng.com](https://tureng.com)
using [tureng-api](https://github.com/gokhanamal/tureng-api).

## Installation

```sh
cd tureng
mkdir -p ~/.local/bin
install ./tureng ~/.local/bin/
```

## Usage

```sh
tureng [ phrase ]
```

> Note: `< required >` `[ optional ]`
> Note: If there are no arguments then tureng will read the stdin.

## Examples

### Arguments

```sh
$ tureng way to go

tebrikler
bravo
aferin
yürü be
```
 
### Standart input

```sh
$ echo sakla samani gelir zamani | tureng

keep a thing seven years and you'll always find a use for it
keep a thing seven years and you'll find a use for it
waste not want not
```
