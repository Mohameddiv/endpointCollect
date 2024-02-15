#!/bin/Bash

python3 $HOME/endpoinCollect/waymore/waymore.py -i $1  -mode U
cat $HOME/endpoinCollect/waymore/results/$1/waymore.txt|anew $HOME/endpoinCollect/endpoints/$1.txt && rm -rf $HOME/endpoinCollect/waymore/results/$1/waymore.txt
gau $1 |anew $HOME/endpoinCollect/endpoints/$1.txt
waybackurls $1|anew $HOME/endpoinCollect/endpoints/$1.txt
python3 $HOME/endpoinCollect/crawler/crawler.py -n All -t $1 >>ali.txt
cat ali.txt|grep "URL"|cut -d " " -f3 >>$HOME/endpoinCollect/endpoints/$1.txt
rm ali.txt
python3 $HOME/endpoinCollect/ParamSpider/paramspider.py --domain $1 --level high  -e js,eot,jpg,jpeg,gif,css,tif,tiff,png,ttf,otf,woff,woff2,ico,svg,txt -o param.txt
cat param.txt| grep "http"|anew $HOME/endpoinCollect/endpoints/$1.txt 
rm param.txt
rm -r output/*


total=$(cat $HOME/endpoinCollect/endpoints/$1.txt | wc  -l)
echo "############################ All Endpoints for $1 :$total "
echo "############################ All Endpoints for $1 here: $HOME/endpoinCollect/endpoints/$1.txt "


