import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
url = ''
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
glo = etree_html.xpath('//*[@id="mylist"]/div[2]/div[2]/span[3]/text()')
for shijie in glo:
  print(shijie)
driver.close()
