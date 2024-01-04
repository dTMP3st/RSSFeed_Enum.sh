#!/bin/bash
clear

if [ $1 == "" ]; then
        figlet "+=== CSF ===+"
        echo ""
        echo "Use mode => $0 [URL]"
else
        figlet "+=== CSF ===+"
        echo ""
        echo "[+] Command => $0 $1"
        echo "[+] Target => $1"
        echo ""
        echo "[ Possible users found ]"
        echo ""
        curl --silent $1/rss.xml | grep "</dc:creator>" | cut -d ">" -f 2 | cut -d "<" -f 1 | uniq
fi
