{pkgs ? import <nixpkgs> {}}:
pkgs.stdenv.mkDerivation {
  name = "document";
  src = pkgs.lib.cleanSource ./.;
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-full;
    })
    pkgs.gnumake
  ];
  installPhase = ''
    ${pkgs.gnumake}/bin/make install
    mkdir -p $out
    mv main.pdf $out
  '';
}
