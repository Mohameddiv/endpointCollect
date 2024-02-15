#!/bin/bash

python3 $HOME/endpointCollect/waymore/waymore.py -i $1  -mode U
cat $HOME/endpointCollect/waymore/waymore.py/results/$1/waymore.txt|anew $HOME/endpointCollect/endpoints/$1.txt && rm -rf $HOME/endpointCollect/waymore/results/$1/waymore.txt
gau $1 |anew $HOME/endpointCollect/endpoints/$1.txt
waybackurls $1|anew $HOME/endpointCollect/endpoints/$1.txt
python3 $HOME/endpointCollect/crawler/crawler.py -n All -t $1 >>ali.txt
cat ali.txt|grep "URL"|cut -d " " -f3 >>$HOME/endpointCollect/endpoints/$1.txt
rm ali.txt
python3 $HOME/endpointCollect/ParamSpider/paramspider.py --domain $1 --level high  -e js,eot,jpg,jpeg,gif,css,tif,tiff,png,ttf,otf,woff,woff2,ico,svg,txt -o param.txt
cat param.txt| grep "http"|anew $HOME/endpointCollect/endpoints/$1.txt 
rm param.txt
rm -r output/*


total=$(cat $HOME/endpointCollect/endpoints/$1.txt | wc  -l)
echo "############################ All Endpoints for $1 :$total "
echo "############################ All Endpoints for $1 here: $HOME/endpointCollect/endpoints/$1.txt "


