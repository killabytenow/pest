#!/bin/bash

TEST_ID="$1"               ; shift
CERTIFICATE_ID="$1"        ; shift
CERTIFICATE_SN="$1"        ; shift
CERTIFICATE_ISSUER_ID="$1" ; shift
CERTIFICATE_ISSUER_SN="$1" ; shift
CREDS="$1"                 ; shift
REQUESTED_SN="$1"          ; shift

set -e

./aest -d "certs" add "$CERTIFICATE_SN" "$CERTIFICATE_ISSUER_ID" "$REQUESTED_SN"

exit 0
