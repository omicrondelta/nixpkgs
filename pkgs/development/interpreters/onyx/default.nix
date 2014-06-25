{stdenv, fetchurl, libedit, pcre, cook}:

stdenv.mkDerivation {
  name = "onyx-5.1.2";

  src = fetchurl {
    url = "http://www.canonware.com/download/onyx/onyx-5.1.2.tar.bz2";
    sha256 = "0q5qvrg9z3y0wiss0xk7ryx4hlx19c8mzdk923xnrnx0x02150cn";
  };

  buildInputs = [ libedit pcre cook ];

  buildPhase = "cook";

  installPhase = ''
    cook install PREFIX="$out"       \
                 LIBDIR="$out/lib"    \
                 MANDIR="$out/share/man"
  '';
}
