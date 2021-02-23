# 新冠肺炎新增确诊爬虫项目
<img src = "https://img.shields.io/badge/-HTML5-E34F26?style=flat&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/-MySQL-F29111?style=flat&logo=mysql&logoColor=FFFFFF"><img src="https://img.shields.io/badge/-JavaScript-eed718?style=flat&logo=javascript&logoColor=ffffff"><img src="http://img.shields.io/badge/-Github-000000?style=flat&logo=github&logoColor=FFFFFF"><img src="https://img.shields.io/hexpm/l/plug?style=flat"><img src="https://img.shields.io/badge/-Python-black?style=flat&logo=python&logoColor=white"> <img src="https://img.shields.io/github/forks/gabrielpondc/xgfeiyan?label=Fork&logo=github"><img src="https://img.shields.io/github/watchers/gabrielpondc/xgfeiyan?label=Watchers&logo=github">

---
### 项目简介
本项目开发于2020年2月16日,起初只是一个对中国境内扩散程度进行一个实时展示,爬虫来源也是于各大网络公司实时量,使用*PHP*以及*HTML*进行前端展- 

- [X] 支持通过echart进行数据展示
- [x] 中国大陆地区数据爬取
- [x] 海外地区支持(除韩国地区外他地区均为综合数据)
- [x] 中国各县市数据爬取(江苏地区,其他地区只需要更改相关数据来源即可)
- [ ] 支持导出数据进行计算

***
### 运行方法

    $python time.py
***
### 相关依赖
#### python
> pymysql
>lxml
>selenium(Webdriver[google chrome])
>BeautifulSoup
#### Web Support
>Baidu Echart
>Apache

***
### 基本思路
对各大疫情显示版网站数据进行爬取,使用lxml对网站进行结构化分析,通过For循环对固定格式XPATH地址进行遍历
```seq
Python爬虫->疫情网站: 爬取
Python爬虫->MySql:通过疫情网站爬入数据库
PHP-->MySql:请求数据
MySql->PHP:返回数据
```
***
### 数据来源

>[腾讯实时疫情][1]
>[人民日报实时疫情][2]
>[丁香园实时疫情][3]
>[新浪实时疫情][4]  [江苏地区][5]
>[韩国地区][6]


  [1]: https://news.qq.com/zt2020/page/feiyan.htm?from=timeline&isappinstalled=0#/
  [2]: http://activity.peopleapp.com/broadcast/?from=timeline
  [3]:https://ncov.dxy.cn/ncovh5/view/pneumonia?from=singlemessage&isappinstalled=0
[4]:https://news.sina.cn/zt_d/yiqing0121?ua=iPhone9%2C4__weibo__10.1.2__iphone__os13.3&from=10A1293010&wm=3200_0002&isappinstalled=0
[5]:https://news.sina.cn/project/fy2020/yq_province.shtml?province=jiangsu
[6]:https://coronaboard.kr


