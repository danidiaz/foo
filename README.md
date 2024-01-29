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
```
[(manual)](https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake)

# links 

- [flake references](https://zero-to-nix.com/concepts/flakes)

- [Using nixpkgs.legacyPackages.${system} vs import](https://discourse.nixos.org/t/using-nixpkgs-legacypackages-system-vs-import/17462)

