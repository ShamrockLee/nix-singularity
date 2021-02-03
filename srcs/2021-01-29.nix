{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "nixpkgs-21.03pre266581.e5ce05cc1ee";
  version = "2021-01-29";

  src = fetchurl {
    url = "https://releases.nixos.org/nixpkgs/${name}/nixexprs.tar.xz";
    sha256 = "1ri1mqvihviz80765p3p59i2irhnbn7vbvah0aacpkks60m9m0id";
  };

  dontBuild = true;
  preferLocalBuild = true;

  installPhase = ''
    cp -a . $out
  '';
}
