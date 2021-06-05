#!/bin/sh

set -e

(cd ./nix/ && \
  cabal2nix ./.. > ./pkg.nix && \
  cabal2nix ./../HaskiiFigletGen > ./pkg-haskii-figlet-gen.nix)
