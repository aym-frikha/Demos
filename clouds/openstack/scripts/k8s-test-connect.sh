#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
while true; do curl   -w "@$DIR/../template/curl-format.txt"  -s -kL http://echoapp.maas/apple ; sleep 1; done
