import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
url = 'https://www.cau.ac.kr/cms/FR_CON/index.do?MENU_ID=590'
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
for c in range(7,13):
    for a in range(1,40):
        qz=etree_html.xpath('//*[@id="month'+str(c)+'"]/ul/li['+str(a)+']/text()')
        sj=etree_html.xpath('//*[@id="month'+str(c)+'"]/ul/li['+str(a)+']/time/text()')
        for d in qz:
            for h in sj:
                print(d+"            "+h.replace('.','/'))

driver.quit()
