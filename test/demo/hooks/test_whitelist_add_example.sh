#!/bin/bash

TEST_ID="$1"               ; shift
CERTIFICATE_ID="$1"        ; shift
CERTIFICATE_SN="$1"        ; shift
CERTIFICATE_ISSUER_ID="$1" ; shift
CERTIFICATE_ISSUER_SN="$1" ; shift
CREDS="$1"                 ; shift
REQUESTED_SN="$1"          ; shift

msg()
{
	echo "HOOK(whitelist_add): $@"
}

msg "Adding whitelist entry to test [$TEST_ID]"
msg "  - Requested subject [$REQUESTED_SN]"

if [ "$CERTIFICATE_ID" ]; then
	msg "  - Certificate based authentication"
	msg "    - Certificate Issuer ID  [$CERTIFICATE_ISSUER_ID] ($CERTIFICATE_ISSUER_SN)"
	msg "    - Certificate ID [$CERTIFICATE_ID] ($CERTIFICATE_SN)"
else
	if [ "$CREDS" ]; then
		msg "  - Password based authentication"
	else
		msg "  - Authentication mechanism not set - ERROR"
		exit 1
	fi
fi

if [ "$CREDS" ]; then
	msg "  - EST credentials: $CREDS"
fi

exit 0
