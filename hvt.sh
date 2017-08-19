#!/bin/bash


echo -en "\n======================================================================\n"
echo -en "\n[+] hvt.sh, HTTP Verb Tampering Script.\n"
echo -en "[+] Created by : https://github.com/Freshnuts\n"

echo -en "\n======================================================================\n"

function usage() {
if [[ "$#" -lt 1 ]]
then
    echo -en "usage: $0 <url>\n"
    echo
    exit
fi
}
usage $1

while read p;
do
	echo -en "\n[+] Attempting METHOD: $p\n"
    sleep 1
	curl -vX $p "$1" --max-time 3
	echo -en "\n======================================================================\n"
done < verb_list

exit
