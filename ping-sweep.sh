#!/bin/bash
# Usage ./ping-sweep.sh <First three octets of you your IP> <First 4th octet> <Last 4th octet>
for i in $(eval echo {$2..$3})

do ping -c 1 $1.$i | grep "64 bytes" |  cut -d " " -f  4 | cut -d ":" -f  1 

done
