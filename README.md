# New Coronavirus Outbreak Map Crawler Project
<a href="https://github.com/topics/html"><img src = "https://img.shields.io/badge/-HTML5-E34F26?style=flat&logo=html5&logoColor=white"></a> <a href="https://github.com/topics/mysql"><img src="https://img.shields.io/badge/-MySQL-F29111?style=flat&logo=mysql&logoColor=FFFFFF"></a> <a href="https://github.com/topics/javascript"><img src="https://img.shields.io/badge/-JavaScript-eed718?style=flat&logo=javascript&logoColor=ffffff"></a>  <a href="https://github.com/gabrielpondc/xgfeiyan/blob/master/LICENSE"><img src="https://img.shields.io/hexpm/l/plug?style=flat"></a> <a href="https://github.com/topics/python"><img src="https://img.shields.io/badge/-Python-black?style=flat&logo=python&logoColor=white"></a> <a href="https://github.com/gabrielpondc/xgfeiyan/fork?fragment=1"><img src="https://img.shields.io/github/forks/gabrielpondc/xgfeiyan?label=Fork&logo=github"></a>  <a href="https://github.com/gabrielpondc"><img src="https://img.shields.io/github/watchers/gabrielpondc/xgfeiyan?label=Watchers&logo=github"></a>
---
English | <a href="https://github.com/gabrielpondc/xgfeiyan/blob/master/README-zh.md">简体中文</a>
---
### Content

- [New Coronavirus Outbreak Map Crawler Project](#New Coronavirus Outbreak Map Crawler Project)
    + [Project Profile](#Project Profile)
    + [Run Way](#Run Way)
    + [Dependencies](#Dependencies)
      - [python](#python)
      - [Web Support](#web-support)
    + [Ideas](#Ideas)
    + [Data source](#Data source)
    + [About the Author](#About the Author)
---
### Project Profile
This project was developed on February 16, 2020, initially as a real-time display of the extent of proliferation in China, and the crawlers were sourced from major Internet companies in real time, using *PHP* and *HTML* for the front-end of the exhibition

- [X] Support data display via echart
- [x] Data Crawl in Mainland China
- [x] Overseas regional support (all regions except Korea are consolidated data)
- [x] Data crawling of counties and cities in China (Jiangsu area, other areas just need to change the relevant data sources)
- [ ] Support exporting data for calculation

***
### Run Way

    $python time.py
***
### Dependencies
#### python
> pymysql  
>lxml  
>selenium(Webdriver[google chrome])  
>BeautifulSoup  
#### Web Support
>Baidu Echart  
>Apache  

***
### Ideas
Crawl the major epidemic display version of the site data, using lxml to structure the site analysis, through the For loop to traverse the fixed format XPATH address
```seq
Python crawler->Epidemic website: crawl
Python Crawler->MySql:Crawl through the epidemic site into the database
PHP->MySql:request data
MySql->PHP:Return data
```
***
### Data source

> <a href="https://news.qq.com/zt2020/page/feiyan.htm?from=timeline&isappinstalled=0#/"><img src="https://img.shields.io/badge/Source-QQ News-brightgreen"></a>
> <a href="http://activity.peopleapp.com/broadcast/?from=timeline"><img src="https://img.shields.io/badge/Source-RenmingNews-red"></a>
> <a href="https://ncov.dxy.cn/ncovh5/view/pneumonia?from=singlemessage&isappinstalled=0"><img src="https://img.shields.io/badge/Source-Dingxiangyuan-blue"></a>
> <a href="https://news.sina.cn/zt_d/yiqing0121?ua=iPhone9%2C4__weibo__10.1.2__iphone__os13.3&from=10A1293010&wm=3200_0002&isappinstalled=0"><img src="https://img.shields.io/badge/Source-Sina News-critical"></a> 
>  <a href="https://news.sina.cn/project/fy2020/yq_province.shtml?province=jiangsu"><img src="https://img.shields.io/badge/Source-Sina News(JiangSu)-critical"></a> 
> <a href="https://coronaboard.kr"><img src="https://img.shields.io/badge/Source-Korean Corona Board-lightblue"></a> 
***
### About the Author

* <a href="https://github.com/gabrielpondc"><img src="http://img.shields.io/badge/-Github-FFFFFF?style=flat&logo=github&logoColor=000000"></a>
[1]:https://github.com/gabrielpondc/xgfeiyan
