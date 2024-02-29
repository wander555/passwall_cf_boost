#!/bin/sh

#stop passwall
/etc/init.d/passwall stop
sleep 2s

# get the iplist
wget https://ipdb.api.030101.xyz/?type=proxy -O bestcf.txt

# filter the ip
./CloudflareST -url https://cdn.cloudflare.steamstatic.com/steam/apps/256843155/movie_max.mp4 -dn 5 -sl 1 -f bestcf.txt -o result.csv

sleep 2s

# get the first ip
val1=($(sed -n '2p' result.csv ) )
array=(${val1//,/ })
anycast="${array[0]}"

echo "now the best ip is：$anycast"

#set the passwall ip
uci set passwall.xxxxxx.address=$anycast
uci commit passwall

#start passwall
/etc/init.d/passwall restart

