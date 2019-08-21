#!/bin/bash
while true; do curl   -w "@$PWD/../template/curl-format.txt"  -s -kL http://echoapp.maas/apple ; sleep 1; done
