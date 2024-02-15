#/bin/bash

#Installation of subdomain.sh tools ....
#it's reqiure go lang to be installed...

mkdir endpoints/
pip install urlextract
git clone https://github.com/xnl-h4ck3r/waymore.git
cd waymore
pip3 install -r requirements.txt
sudo python3 setup.py install
cd ../

go install github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/tomnomnom/anew@latest

go install github.com/tomnomnom/waybackurls@latest

git clone https://github.com/mrxdevil404/crawler.git

git clone https://github.com/devanshbatham/ParamSpider.git
cd ParamSpider/
sudo pip install .
cd ../
