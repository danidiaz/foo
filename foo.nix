{ mkDerivation, aeson, base, lib }:
mkDerivation {
  pname = "foo";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ aeson base ];
  doHaddock = false;
  license = lib.licenses.bsd3;
}
