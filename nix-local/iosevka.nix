{ stdenv, fetchFromGitHub, otfcc, nodejs-8_x, ttfautohint, gnumake }:

stdenv.mkDerivation rec {
  name = "iosevka-${version}";
  version = "master";

  src = fetchFromGitHub {
    "owner" = "be5invis";
    "repo" = "iosevka";
    "rev" = "f0643152bf8525a4a79068523003d74f27efb848";
    "sha256" = "1f9wk8h68nyhnaqr6nlrw4rg4pz3p0qlbx659kr1nkrp0ql37z07";
  };

  buildInputs = [ otfcc nodejs-8_x gnumake ttfautohint ];

  buildPhase = ''
    HOME=. npm install
    make custom-config set=term design='term v-asterisk-low' italic='v-i-serifed v-l-serifed v-a-doublestorey v-g-doublestorey'
    make custom set=term
  '';

  installPhase = ''
    fontdir=$out/share/fonts/iosevka
    mkdir -p $fontdir

    cp -v dist/iosevka-term/ttf/* $fontdir
  '';

  postInstall = ''
    fc-cache -f -v
  '';

  meta = with stdenv.lib; {
    homepage = http://be5invis.github.io/Iosevka/;
    downloadPage = "https://github.com/be5invis/Iosevka/releases";
    description = ''
      Slender monospace sans-serif and slab-serif typeface inspired by Pragmata
      Pro, M+ and PF DIN Mono, designed to be the ideal font for programming.
    '';
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
