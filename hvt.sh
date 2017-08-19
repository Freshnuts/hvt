#!/bin/bash

echo -en "\n======================================================================\n"
echo -en "\n[+] hvt.sh, HTTP Verb Tampering Script.\n"
echo -en "[+] Created by : https://github.com/Freshnuts\n"
echo -en "\n======================================================================\n"

function usage() {
if [[ "$#" -lt 2 ]]
then
    echo -en "usage: $0 <url> </path/file>\n"
    echo
    exit
fi
}
usage $1 $2

while read p;
do
	echo -en "\n[+] Attempting METHOD: $p\n"
    sleep 1
	curl -vX $p "$1" --max-time 3
	echo -en "\n======================================================================\n"
done < $2
exit
