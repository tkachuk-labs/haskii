#!/bin/sh

#
# app
#

export HASKII_LOG_ENV="dev"
export HASKII_LOG_FORMAT="Bracket" # Bracket | JSON
export HASKII_LOG_VERBOSITY="V3"
export HASKII_LIBPQ_CONN_STR="postgresql://nixbld1@localhost/haskii"
export HASKII_ENDPOINT_PORT="3000"
