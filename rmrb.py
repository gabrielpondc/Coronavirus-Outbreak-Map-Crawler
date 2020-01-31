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
url = '
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
r1 = '[a-zA-Z0-9’!"#$%&\'()*+,-./:;<=>?@，。?★、…【】《》？“”‘’！[\\]^_`{|}~]+'
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
cursor.execute("delete from global")
print("获取境外信息")
for d in range(1, 40):
    glo = etree_html.xpath('//*[@id="app"]/div/div[4]/div[2]/div[' + str(d) + ']/text()')

    for shijie in glo:
        sjl = re.sub(r1, '', shijie).replace('确诊', '').replace('例', '')
        string = re.findall(r"\d+\.?\d*", shijie)
        for sj in string:
            print(sjl + sj)
            cursor.execute("INSERT INTO global (location,dia) VALUES('%s','%s')" % (sjl, sj))
            conn.commit()
driver.close()
cursor.close()
os._exit(0)
