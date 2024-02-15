#/bin/Bash

#Installation of subdomain.sh tools ....
#it's reqiure go lang to be installed...

git clone https://github.com/xnl-h4ck3r/waymore.git
cd waymore
pip3 install -r requirements.txt
sudo python setup.py install
cd

go install github.com/lc/gau/v2/cmd/gau@latest

go install github.com/tomnomnom/waybackurls@latest

git clone https://github.com/mrxdevil404/crawler.git

git clone https://github.com/devanshbatham/ParamSpider.git
cd paramspider
pip install  
cd