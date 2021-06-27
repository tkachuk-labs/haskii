{ mkDerivation, async, attoparsec, base, bytestring, casing
, chronos, concur-core, concur-replica, containers, directory
, directory-tree, envparse, esqueleto, extra, file-embed, filepath
, ghc, ghc-paths, ghc-source-gen, haskii, hpack, katip, lens
, lens-simple, microlens, monad-logger, mtl, optparse-applicative
, persistent, persistent-migration, persistent-postgresql
, persistent-template, rainbow, replica, resource-pool, retry
, stdenv, stm, template-haskell, text, th-lift-instances, time
, unbounded-delays, universum, unliftio, wai
, wai-middleware-static-embedded, warp, websockets
}:
mkDerivation {
  pname = "haskii-figlet-gen";
  version = "0.1.0.0";
  src = ./../HaskiiFigletGen;
  isLibrary = false;
  isExecutable = true;
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    async attoparsec base bytestring casing chronos concur-core
    concur-replica containers directory directory-tree envparse
    esqueleto extra file-embed filepath ghc ghc-paths ghc-source-gen
    haskii katip lens lens-simple microlens monad-logger mtl
    optparse-applicative persistent persistent-migration
    persistent-postgresql persistent-template rainbow replica
    resource-pool retry stm template-haskell text th-lift-instances
    time unbounded-delays universum unliftio wai
    wai-middleware-static-embedded warp websockets
  ];
  prePatch = "hpack";
  homepage = "https://github.com/tkachuk-labs/haskii#readme";
  description = "Functional, Monadic Ascii-Art";
  license = stdenv.lib.licenses.bsd3;
}
