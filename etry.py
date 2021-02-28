import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
url = 'http://shankapi.ifeng.com/autumn/getSoFengData/all/%E9%9F%A9%E5%9B%BD/1/getSoFengDataCallback'
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
glo = etree_html.xpath('//*[@id="root"]/div[2]/div[3]/div[2]/ul/li[1]/div/h2/a/text()')
for shijie in glo:
  print(shijie)
driver.close()
