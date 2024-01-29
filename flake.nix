{
  description = "A very basic flake";

  inputs.nixpkgs.url = "nixpkgs/release-23.11";
  inputs.previous.url = "/home/danidiaz/foo";

  outputs = { self, nixpkgs, previous }: {

    packages.x86_64-linux.foo = 
      # https://discourse.nixos.org/t/using-nixpkgs-legacypackages-system-vs-import/17462/3
      let pkgs = nixpkgs.legacyPackages.x86_64-linux;
          myDeriv = pkgs.haskellPackages.callPackage ./foo.nix {};
          # https://nixos.org/manual/nixpkgs/unstable/#haskell-incremental-builds
          # https://nixos.org/manual/nixpkgs/unstable/#haskell-overriding-haskell-packages
          myDerivIntermediates = pkgs.haskell.lib.compose.overrideCabal (drv: {
              previousIntermediates = previous.packages.x86_64-linux.default.intermediates;
            }) myDeriv;
       in myDerivIntermediates;
    packages.x86_64-linux.default = self.packages.x86_64-linux.foo;
  };
}
