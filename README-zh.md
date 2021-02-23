# 新冠肺炎新增确诊爬虫项目
<a href="https://github.com/topics/html"><img src = "https://img.shields.io/badge/-HTML5-E34F26?style=flat&logo=html5&logoColor=white"></a> <a href="https://github.com/topics/mysql"><img src="https://img.shields.io/badge/-MySQL-F29111?style=flat&logo=mysql&logoColor=FFFFFF"></a> <a href="https://github.com/topics/javascript"><img src="https://img.shields.io/badge/-JavaScript-eed718?style=flat&logo=javascript&logoColor=ffffff"></a>  <a href="https://github.com/gabrielpondc/xgfeiyan/blob/master/LICENSE"><img src="https://img.shields.io/hexpm/l/plug?style=flat"></a> <a href="https://github.com/topics/python"><img src="https://img.shields.io/badge/-Python-black?style=flat&logo=python&logoColor=white"></a> <a href="https://github.com/gabrielpondc/xgfeiyan/fork?fragment=1"><img src="https://img.shields.io/github/forks/gabrielpondc/xgfeiyan?label=Fork&logo=github"></a>  <a href="https://github.com/gabrielpondc"><img src="https://img.shields.io/github/watchers/gabrielpondc/xgfeiyan?label=Watchers&logo=github"></a>
---
### 目录

- [新冠肺炎新增确诊爬虫项目](#新冠肺炎新增确诊爬虫项目)
    + [项目简介](#项目简介)
    + [运行方法](#运行方法)
    + [相关依赖](#相关依赖)
      - [python](#python)
      - [Web Support](#web-support)
    + [基本思路](#基本思路)
    + [数据来源](#数据来源)
    + [关于作者](#关于作者)
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

> <a href="https://news.qq.com/zt2020/page/feiyan.htm?from=timeline&isappinstalled=0#/"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E8%85%BE%E8%AE%AF%E5%AE%9E%E6%97%B6%E7%96%AB%E6%83%85-brightgreen"></a>
> <a href="http://activity.peopleapp.com/broadcast/?from=timeline"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E4%BA%BA%E6%B0%91%E6%97%A5%E6%8A%A5%E5%AE%9E%E6%97%B6%E7%96%AB%E6%83%85-red"></a>
> <a href="https://ncov.dxy.cn/ncovh5/view/pneumonia?from=singlemessage&isappinstalled=0"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E4%B8%81%E9%A6%99%E5%9B%AD%E5%AE%9E%E6%97%B6%E7%96%AB%E6%83%85-blue"></a>
> <a href="https://news.sina.cn/zt_d/yiqing0121?ua=iPhone9%2C4__weibo__10.1.2__iphone__os13.3&from=10A1293010&wm=3200_0002&isappinstalled=0"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E6%96%B0%E6%B5%AA%E5%AE%9E%E6%97%B6%E7%96%AB%E6%83%85-critical"></a> 
>  <a href="https://news.sina.cn/project/fy2020/yq_province.shtml?province=jiangsu"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E6%96%B0%E6%B5%AA%E5%AE%9E%E6%97%B6%E7%96%AB%E6%83%85(%E6%B1%9F%E8%8B%8F)-critical"></a> 
> <a href="https://coronaboard.kr"><img src="https://img.shields.io/badge/%E6%9D%A5%E6%BA%90-%E9%9F%A9%E5%9B%BD%E5%9C%B0%E5%8C%BA-lightblue"></a> 
***
### 关于作者

* <a href="https://github.com/gabrielpondc"><img src="http://img.shields.io/badge/-Github-FFFFFF?style=flat&logo=github&logoColor=000000"></a>
