{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/c3aa7b8938b17aebd2deecf7be0636000d62a2b9.tar.gz";
    sha256 = "sha256:med8+5DSWa2UnOqtdICndjDAEjxr5D7zaIiK4pn0Q7c=";
  }) {}
}:

with pkgs;

let
  packages = rec {
    cpprestsdk = callPackage ./pkgs/cpprestsdk {};

    inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.
  };
in
  packages