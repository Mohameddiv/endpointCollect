#!/bin/bash

python3 $HOME/endpointCollect/waymore/waymore/waymore.py -i $1  -mode U -oU $HOME/endpointCollect/endpoints/$1.txt
#cat $HOME/.config/waymore/results/$1/waymore.txt|anew $HOME/endpointCollect/endpoints/$1.txt && rm -rf $HOME/.config/waymore/results/$1/waymore.txt
gau $1 |anew $HOME/endpointCollect/endpoints/$1.txt
waybackurls $1|anew $HOME/endpointCollect/endpoints/$1.txt
echo "$1" |  (gauplus || hakrawler)| grep -Ev "\.(jpeg|jpg|png|ico|woff|svg|css|ico|woff|ttf)$" |anew $HOME/endpointCollect/endpoints/$1.txt
gospider -s https://$1 -a -w -r --subs|  grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*"|anew $HOME/endpointCollect/endpoints/$1.txt
python3 $HOME/endpointCollect/crawler/crawler.py -n All -t $1 >>ali.txt
cat ali.txt|grep "URL"|cut -d " " -f3 >>$HOME/endpointCollect/endpoints/$1.txt
rm ali.txt
paramspider -d $1 
cat results/$1.txt|anew $HOME/endpointCollect/endpoints/$1.txt 
rm -rf output/*


total=$(cat $HOME/endpointCollect/endpoints/$1.txt | wc  -l)
echo "############################ All Endpoints for $1 :$total "
echo "############################ All Endpoints for $1 here: $HOME/endpointCollect/endpoints/$1.txt " 


