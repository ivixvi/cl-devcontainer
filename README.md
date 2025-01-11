# cl-devcontainer
Common Lisp Development Environments For VSCode

## Reference

### Package

- https://www.lispworks.com/documentation/HyperSpec/Body/11_aa.htm
- https://lispcookbook.github.io/cl-cookbook/packages.html

### Build System: ASDF

- https://asdf.common-lisp.dev/asdf.html
- 日本語訳: https://privet-kitty.github.io/misc/asdf-ja.html 

### Package Installer: Quicklisp

- https://www.quicklisp.org/beta/

### Runtime Management: Roswell

- https://roswell.github.io/

### GitHub Actions

- https://github.com/40ants/setup-lisp
- https://github.com/40ants/run-tests

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
