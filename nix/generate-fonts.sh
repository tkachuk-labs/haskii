#!/bin/sh

set -e

rm -rf ./Haskii/Haskii/Figlet/Font/*.hs
rm -rf ./Haskii/Haskii/Figlet/Font.hs
stack run
