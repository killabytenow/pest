#!/bin/bash

TEST_ID="$1"

msg()
{
	echo "HOOK(test_start): $@"
}

msg "New test started"
msg "  Test ID [$TEST_ID]"

exit 0
