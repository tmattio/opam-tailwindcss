# `opam-tailwindcss`

[Tailwind CSS](https://tailwindcss.com) is a an utility-first CSS
framework for rapidly building custom user interfaces.

This opam package wraps [the standalone executable version][1] of the
Tailwind CSS 3 framework. These executables are platform specific.
Upon installation, opam will automatically pick the correct executable
for your platform and install it as a `tailwindcss` binary. Supported
platforms are Linux arm64, Linux x64, macOS arm64, macOS x64, Windows
arm64, and Windows x64.

[1]: https://tailwindcss.com/blog/standalone-cli

Once installed, you can execute the binary with:

``` sh
opam exec -- tailwindcss
```

Here is a dune rule that uses the installed binary to generate a CSS
file:

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

You may use an opam [pin-depends][] to depend on this package. Prefer
the `.tar.gz` version to have a lighter download.

```
pin-depends: [
  ["tailwindcss.dev" "https://github.com/tmattio/opam-tailwindcss/archive/b50699e860bcc7a467eaa7a4e172fea57881a280.tar.gz"]
]
```

You can install `opam-tailwindcss` using `opam`:

``` sh
opam install tailwindcss
```

[pin-depends]: https://opam.ocaml.org/doc/Manual.html#opamfield-pin-depends

## License

`opam-tailwindcss` is released under the [ISC License][].
Tailwind CSS is released under the [MIT License][].

[ISC License]: https://opensource.org/licenses/ISC
[MIT License]: https://opensource.org/licenses/MIT
