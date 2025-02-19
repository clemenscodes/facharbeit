{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive) scheme-full;
    })
    pkgs.gnumake
    pkgs.zotero
  ];
}
