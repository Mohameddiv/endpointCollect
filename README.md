# endpointCollect

This is a custom bash script used to collect endpoints for a given domain. It used:
1. [waymore](https://github.com/xnl-h4ck3r/waymore)
2. [gau](https://github.com/lc/gau)
3. [gauplus](https://github.com/bp0lr/gauplus)
4. [hakrawler](https://github.com/hakluke/hakrawler)
5. [gospider](https://github.com/jaeles-project/gospider)
6. [waybacurls](https://github.com/tomnomnom/waybackurls)
7. [paramspider](https://github.com/devanshbatham/ParamSpider)
8. [crawler](https://github.com/mrxdevil404/crawler)


**Installation:**
```
git clone https://github.com/Mohameddiv/endpointCollect.git
cd endpointCollect
sudo chmod +x endpoint.sh install.sh
sudo cp endpoint.sh /usr/local/bin/
bash install.sh
```

**Usage:**
```
endpoint.sh target.com
```
**Don't** forget to add apikeys to waymore `config.yaml` file in `.config/waymore/` dir.

