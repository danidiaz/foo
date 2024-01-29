# foo

This is a dummy package for testing incremental Haskell builds with Nix.

# useful commands

```
nix run github:NixOS/nixpkgs/release-21.11#cabal2nix .
nix run github:NixOS/nixpkgs/release-21.11#cabal2nix -- --no-haddock .
```

```
nix build --no-link
```

```
nix flake show
nix flake info
nix derivation show
nix derivation show | nix run nixpkgs#jq -- '.[].outputs'
```
[(manual)](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake)
```

```
nix-repl> :load-flake .
warning: Git tree '/home/danidiaz/foo2' is dirty
Added 12 variables.

nix-repl> inputs.previous.packages.x86_64-linux.default.outPath
"/nix/store/m7grbnx0wgql7ffvrlirv43k83zyza62-foo-0.1.0.0"

nix-repl> inputs.previous.packages.x86_64-linux.default.out.intermediates.outPath
"/nix/store/rcj0jwna867vdxrsij5nrl8pw91p91rv-foo-0.1.0.0-intermediates"
```

# links 

- [flake references](https://zero-to-nix.com/concepts/flakes)

- [Using nixpkgs.legacyPackages.${system} vs import](https://discourse.nixos.org/t/using-nixpkgs-legacypackages-system-vs-import/17462)

- [Haskell section of the Nixpkgs manual](https://nixos.org/manual/nixpkgs/unstable/#haskell). [incremental builds](https://nixos.org/manual/nixpkgs/unstable/#haskell-incremental-builds)

> when you want to override the arguments passed to haskellPackages.mkDerivation. For this, the function overrideCabal from haskell.lib.compose is used

- [derivations](https://nixos.org/manual/nix/stable/language/derivations.html)

> You can refer to each output of a derivation by selecting it as an attribute. The first element of outputs determines the default output and ends up at the top-level.