{
  description = "Automatic GitHub Gist uploads for selections in URxvt";

  outputs = { self, nixpkgs, }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };

      stdenv.mkDerivation {
        name = "urxvt-gist";
        src = self;
        installPhase = ''
          mkdir -p $out/lib/urxvt/perl; install -t $out/lib/urxvt/perl urxvt-gist
        '';
      };
  };
}
