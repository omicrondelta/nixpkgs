{ cabal, base64Bytestring, blazeHtml, cgi, ConfigFile, feed
, filepath, filestore, ghcPaths, happstackServer, highlightingKate
, hslogger, HStringTemplate, HTTP, json, mtl, network, pandoc
, pandocTypes, parsec, random, recaptcha, safe, SHA, syb, tagsoup
, text, time, url, utf8String, xhtml, xml, xssSanitize, zlib, fetchpatch
}:

cabal.mkDerivation (self: {
  pname = "gitit";
  version = "0.10.3.1";
  sha256 = "1sm6rryfyqr0nd4flbc5d520xyw2ajnkylvqf4fi4dhl6fnbpam5";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    base64Bytestring blazeHtml cgi ConfigFile feed filepath filestore
    ghcPaths happstackServer highlightingKate hslogger HStringTemplate
    HTTP json mtl network pandoc pandocTypes parsec random recaptcha
    safe SHA syb tagsoup text time url utf8String xhtml xml xssSanitize
    zlib
  ];
  jailbreak = true;
  patches = [ (fetchpatch {
      url = "https://github.com/jgm/gitit/commit/48155008397bdaed4f97c5678d83c70d4bc3f0ff.patch";
      sha256 = "16n372wrikwb3g4pb3zljxnp19in0828wp40diqgkplhlnwww6nw";
    })
  ];
  preConfigure = ''
    sed -i -e 's|network .*< 2.5|network|' gitit.cabal
  '';
  meta = {
    homepage = "http://gitit.net";
    description = "Wiki using happstack, git or darcs, and pandoc";
    license = "GPL";
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
