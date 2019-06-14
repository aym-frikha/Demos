#!/bin/bash
CHECK_DIRECTORY="/check"
CHECK_FILE="/check/check.sha1"
if [ ! -d "$CHECK_DIRECTORY" ]; then
  mkdir $CHECK_DIRECTORY
fi

if [ ! -f "$CHECK_FILE" ]; then
  sha1sum /etc/resolv.conf > $CHECK_FILE
fi

sha1sum -c $CHECK_FILE
