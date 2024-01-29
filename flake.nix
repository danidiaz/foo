{
  description = "A very basic flake";

  inputs.nixpkgs.url = "nixpkgs/release-23.11";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.foo = 
      let myDeriv = nixpkgs.haskellPackages.callPackage ./foo.nix {};
       in myDeriv;

    packages.x86_64-linux.default = self.packages.x86_64-linux.foo;

  };
}
