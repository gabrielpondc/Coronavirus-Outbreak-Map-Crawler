import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
import re
conn = pymysql.connect( # 创建数据库连接
)
cursor = conn.cursor()
cursor.execute("delete from news")
url2 = ''
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url2)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
ys = etree_html.xpath('//*[@id="charts"]/div[3]/div[2]/div[1]/text()')
for y in ys:
    print(y)
    cursor.execute("update dom set sus = '%s' where id=1" % (y))

for i in range(3,8):
    xw = etree_html.xpath('//*[@id="news"]/div['+str(i)+']/div[3]/div[1]/text()')
    for news in xw:
        print(news)
        no=i-2
        cursor.execute("INSERT INTO news (id,con) VALUES(%d,'%s')" % (no, news))
    conn.commit()
driver.close()
cursor.close()
os._exit(0)
