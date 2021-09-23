{
  description = "Automatic GitHub Gist uploads for selections in URxvt";

  outputs = { self, nixpkgs, }:
    let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
      };

      perlPackages = pkgs.perlPackages;
    in {
      defaultPackage.x86_64-linux =
        pkgs.stdenv.mkDerivation {
          name = "urxvt-gist";
          src = self;
          buildInputs = with perlPackages; [
            JSONMaybeXS
          ];
          installPhase = ''
            mkdir -p $out/lib/urxvt/perl; install -t $out/lib/urxvt/perl urxvt-gist
          '';
        };
    };
}
