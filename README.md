# `opam-tailwindcss`

[Tailwind CSS](https://tailwindcss.com) is a an utility-first CSS framework for rapidly building custom user interfaces.

This opam package wraps [the standalone executable version](https://tailwindcss.com/blog/standalone-cli) of the Tailwind CSS 3 framework. These executables are platform specific. Upon installation, opam will automatically pick the correct executable for your platform and install it as a `tailwindcss` binary. Supported platforms are Linux arm64, Linux x64, macOS arm64, macOS x64, Windows arm64, and Windows x64.

Once installed, you can execute the binary with:

```
opam exec -- tailwindcss
```

Here is a dune rule that uses the installed binary to generate a CSS file:

```
(rule
  (target main.css)
  (deps
    (:config %{workspace_root}/tailwind.config.js)
    (:input src/ocamlorg_frontend/css/styles.css))
  (action
    (chdir
      %{workspace_root}
      (run tailwindcss -c %{config} -i %{input} -o %{target}))))
```

## Installation

You can install `opam-tailwindcss` using `opam`:

```bash
opam install tailwindcss
```

## License

`opam-tailwindcss` is released under the [ISC License](https://opensource.org/licenses/ISC).
Tailwind CSS is released under the [MIT License](https://opensource.org/licenses/MIT).

## Update vendored Tailwindcss executables

The [`update.sh`](./update.sh) script should take care of updating the
vendored executables. It always modifies the last commit, as not to
carry copies of the executables multiple times in history.
