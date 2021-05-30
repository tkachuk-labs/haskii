{ mkDerivation, async, attoparsec, base, bytestring, casing
, chronos, concur-core, concur-replica, containers, directory
, directory-tree, envparse, esqueleto, extra, file-embed, filepath
, ghc, ghc-paths, ghc-source-gen, hpack, hspec, hspec-wai, katip
, lens, lens-simple, microlens, monad-logger, mtl, persistent
, persistent-migration, persistent-postgresql, persistent-template
, rainbow, replica, resource-pool, retry, stdenv, stm
, template-haskell, text, th-lift-instances, time, unbounded-delays
, universum, unliftio, wai, wai-middleware-static-embedded, warp
, websockets
}:
mkDerivation {
  pname = "haskii";
  version = "0.1.0.0";
  src = ./..;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async attoparsec base bytestring casing chronos concur-core
    concur-replica containers directory directory-tree envparse
    esqueleto extra file-embed filepath ghc ghc-paths ghc-source-gen
    hspec hspec-wai katip lens lens-simple microlens monad-logger mtl
    persistent persistent-migration persistent-postgresql
    persistent-template rainbow replica resource-pool retry stm
    template-haskell text th-lift-instances time unbounded-delays
    universum unliftio wai wai-middleware-static-embedded warp
    websockets
  ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    async attoparsec base bytestring casing chronos concur-core
    concur-replica containers directory directory-tree envparse
    esqueleto extra file-embed filepath ghc ghc-paths ghc-source-gen
    katip lens lens-simple microlens monad-logger mtl persistent
    persistent-migration persistent-postgresql persistent-template
    rainbow replica resource-pool retry stm template-haskell text
    th-lift-instances time unbounded-delays universum unliftio wai
    wai-middleware-static-embedded warp websockets
  ];
  prePatch = "hpack";
  homepage = "https://github.com/tkachuk-labs/haskii#readme";
  description = "Functional, Monadic Ascii-Art";
  license = stdenv.lib.licenses.bsd3;
}
