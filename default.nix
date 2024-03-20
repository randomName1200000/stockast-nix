
with import <nixpkgs> {};

with pkgs;
stdenv.mkDerivation {
  name = "Stockast";
  version = "1.0.1";
  src = ./.;
  buildInputs = [ ];

  buildPhase = "make";
  nativeBuildInputs = [ pkgs.llvmPackages_13.openmp ];
  installPhase = ''
    mkdir -p $out/bin
    cp data.csv $out/bin/data.csv
    cp stockast $out/bin/stockast
  '';
}
