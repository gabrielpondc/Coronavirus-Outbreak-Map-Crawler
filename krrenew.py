#coding:utf-8
import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup

url = 'https://coronaboard.kr/'
driver = webdriver.Chrome(executable_path=r'/Users/gabrielpondc/Desktop/test/chromedriver')
driver.get(url)
time.sleep(4)
shi = driver.page_source.encode('utf-8')
etree = html.etree
etree_html = etree.HTML(shi)
qz=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[1]/p[1]/text()')
sw=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[2]/p[1]/text()')
zy=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[3]/p[1]/text()')
for q in qz:
    for s in sw:
        for z in zy:
            que=int(q.replace(',',''))
            si=int(s.replace(',',''))
            zhi=int(z.replace(',',''))
            xc=que-si-zhi
            print("现存确诊:"+str(xc)+"治愈:"+str(zhi)+"死亡:"+str(si)+"累计确诊:"+str(que))
driver.quit()
os._exit(0)
