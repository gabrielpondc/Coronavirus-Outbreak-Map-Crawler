import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
import os
import time
from selenium import webdriver
import time
from bs4 import BeautifulSoup
conn = pymysql.connect( # 创建数据库连接

)
cursor = conn.cursor()
url = ''
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
qz=etree_html.xpath('//*[@id="root"]/div/div[3]/div[1]/p[2]/span/span[1]/text()')
ys=etree_html.xpath('//*[@id="root"]/div/div[3]/div[1]/p[2]/span/span[2]/text()')
zy=etree_html.xpath('//*[@id="root"]/div/div[3]/div[1]/p[2]/span/span[3]/text()')
sw=etree_html.xpath('//*[@id="root"]/div/div[3]/div[1]/p[2]/span/span[4]/text()')
whqz = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p[1]/span/span/span[1]/text()')
whzy = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p[1]/span/span/span[2]/text()')
whsw = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p[1]/span/span/span[3]/text()')
cursor.execute("delete from dom")
cursor.execute("delete from time")
cursor.execute("INSERT INTO time (updatetime) VALUES(NOW())")
cursor.execute("delete from lo")
cursor.execute("delete from content")
for q in qz:
    for y in ys:
        for s in sw:
            for z in zy:
                print(q,y,s,z)
                cursor.execute("INSERT INTO dom (dia,sus,de,res) VALUES('%s','%s','%s','%s')" % (q,y,s,z))

for i in range(2,40):
    content = etree_html.xpath('//*[@id="root"]/div/div[3]/div[4]/div['+str(i)+']/div[1]/p[1]/text()')

    for each in content:
        non=i-1
        print(each)
        cursor.execute("INSERT INTO lo (id,location) VALUES('%s','%s')" % (non,each))

for b in range(2,40):
    lc = etree_html.xpath('//*[@id="root"]/div/div[3]/div[4]/div['+str(b)+']/div[1]/p[1]/text()')
    for location in lc:
        no=b-1
        print(str(no)+location)
        cursor.execute("INSERT INTO lo (id,location) VALUES('%s','%s')" % (no,location))
        cursor.execute("INSERT INTO content (id,location) VALUES('%s','%s')" % (no,location.replace(' ','')))


for c in range(2,40):
    ys = etree_html.xpath('//*[@id="root"]/div/div[3]/div[4]/div['+str(c)+']/div[1]/p[3]/text()')

    for yisi in ys:
        print("编号"+str(no)+":"+yisi)
        no=c-1
        cursor.execute("update content set death='%s'  where id=%s" % (yisi, no))
for a in range(2,40):
    qz = etree_html.xpath('//*[@id="root"]/div/div[3]/div[4]/div['+str(a)+']/div[1]/p[2]/text()')
    for lo in qz:
        bianhao=a-1
        print(str(bianhao)+":"+lo)
        cursor.execute("update content set diagnosis='%s' where id=%s" % (lo, bianhao))
for c in range(2, 40):
  zy = etree_html.xpath('//*[@id="root"]/div/div[3]/div[4]/div['+str(c) +']/div[1]/p[4]/text()')
  for zhiyu in zy:
    print(zhiyu)
    no = c - 1
    cursor.execute("update content set cure='%s'  where id=%s" % (zhiyu, no))
    conn.commit()
