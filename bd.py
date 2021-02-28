import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
url = 'https://voice.baidu.com/act/newpneumonia/newpneumonia'
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
qz=etree_html.xpath('//*[@id="ptab-0"]/div[2]/table/tbody/tr/td[1]/div/div[1]/text()')
zy=etree_html.xpath('//*[@id="ptab-0"]/div[2]/table/tbody/tr/td[2]/div/div[1]/text()')
sw=etree_html.xpath('//*[@id="ptab-0"]/div[2]/table/tbody/tr/td[3]/div/div[1]/text()')
t=etree_html.xpath('//*[@id="ptab-0"]/div[1]/span[2]/text()')

for q in qz:
        for s in sw:
            for z in zy:
                print("获取全国数据")
                print(q,s,z)
                print("获取区域信息")
for b in range(1,40):
    lc = etree_html.xpath('//*[@id="ptab-0"]/div[6]/div[2]/table/tbody/tr['+str(b)+']/td[1]/div/span[2]/text()')
    for location in lc:

        print(str(b)+location)
        
print("获取死亡人数")
for c in range(1,40):
    ys = etree_html.xpath('//*[@id="ptab-0"]/div[6]/div[2]/table/tbody/tr['+str(c)+']/td[4]/text()')

    for yisi in ys:
        print("编号"+str(c)+":"+yisi)
        
print("获取确诊人数")
for a in range(1,40):
    qz = etree_html.xpath('//*[@id="ptab-0"]/div[6]/div[2]/table/tbody/tr['+str(a)+']/td[2]/text()')
    for lo in qz:

        print(str(a)+":"+lo)
        print("获取治愈人数")
for c in range(1, 40):
  zy = etree_html.xpath('//*[@id="ptab-0"]/div[6]/div[2]/table/tbody/tr['+str(c)+']/td[3]/text()')
  for zhiyu in zy:
    print(zhiyu)
driver.close()
print("境内信息更新完成")
os._exit(0)
