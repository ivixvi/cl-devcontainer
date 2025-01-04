# cl-devcontainer
Common Lisp Development Environments For VSCode

## Reference

### Package System: ASDF

- https://asdf.common-lisp.dev/asdf.html
- 日本語訳: https://privet-kitty.github.io/misc/asdf-ja.html 

### Environments Management: Roswell

- https://roswell.github.io/

## tests for example package 

### dependencies install

The sample `greeting` package uses [fukamachi/rove](https://github.com/fukamachi/rove) as the testing library, which needs to be installed only on the first run.

```sh
ros install rove
```

### Usage 

```sh
rove greeting.asd
```
