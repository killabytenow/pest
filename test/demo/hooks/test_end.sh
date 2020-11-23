#!/bin/bash

TEST_ID="$1"
ERROR="$2"

msg()
{
	echo "HOOK(test_end): $@"
}

STATUS="finished succesfully"
if [ "$ERROR" ]; then
	STATUS="failed with error [$ERROR]"
fi
msg "Test [$TEST_ID] $STATUS"

exit 0
