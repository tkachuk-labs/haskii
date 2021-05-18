{ mkDerivation, async, attoparsec, base, bytestring, chronos
, concur-core, concur-replica, containers, envparse, esqueleto
, extra, file-embed, hpack, hspec, hspec-wai, katip, lens
, lens-simple, microlens, monad-logger, mtl, persistent
, persistent-migration, persistent-postgresql, persistent-template
, rainbow, replica, resource-pool, retry, stdenv, stm
, template-haskell, text, time, unbounded-delays, universum
, unliftio, wai, wai-middleware-static-embedded, warp, websockets
}:
mkDerivation {
  pname = "haskii";
  version = "0.1.0.0";
  src = ./..;
  libraryHaskellDepends = [
    async attoparsec base bytestring chronos concur-core concur-replica
    containers envparse esqueleto extra file-embed hspec hspec-wai
    katip lens lens-simple microlens monad-logger mtl persistent
    persistent-migration persistent-postgresql persistent-template
    rainbow replica resource-pool retry stm template-haskell text time
    unbounded-delays universum unliftio wai
    wai-middleware-static-embedded warp websockets
  ];
  libraryToolDepends = [ hpack ];
  doHaddock = false;
  prePatch = "hpack";
  homepage = "https://github.com/tkachuk-labs/haskii#readme";
  description = "Functional, Monadic Ascii-Art";
  license = stdenv.lib.licenses.bsd3;
}
