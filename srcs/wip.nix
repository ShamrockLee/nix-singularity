{ stdenv, fetchurl }:
let
  singularity-tools-expression = ./singularity-tools.nix;
in (import ./2021-01-29.nix { inherit stdenv fetchurl; }).overrideAttrs (oldAttrs: {
  installPhase = oldAttrs.installPhase + ''
    cp ${singularity-tools-expression} $out/pkgs/build-support/singularity-tools/default.nix
  '';
})
