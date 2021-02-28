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
    host='211.54.64.56', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk19961226', # 登录用户密码
    database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)
cursor = conn.cursor()
url2 = 'https://news.sina.cn/project/fy2020/yq_province.shtml?country=SCKR0082'
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url2)
time.sleep(3)
shi = driver.page_source
etree = html.etree
cursor.execute("delete from krnews")
cursor.execute("delete from krtest")
etree_html = etree.HTML(shi)

qz=etree_html.xpath('//*[@id="header"]/div[1]/div/div[2]/div[1]/span/b/text()')
zy=etree_html.xpath('//*[@id="header"]/div[1]/div/div[2]/div[3]/span/b/text()')
sw=etree_html.xpath('//*[@id="header"]/div[1]/div/div[2]/div[2]/span/b/text()')

for q in qz:
        for s in sw:
            for z in zy:
                dia=q.replace(',','')
                de=s.replace(',','')
                cur=z.replace(',','')
                print(dia,de,cur)

                cursor.execute("update kr set dia='%s',cur='%s',de='%s' where id=1" % (dia,cur,de))
print("地点更新")
for a in range(2,40):
    gloc = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(a)+']/span[1] /text()')
    for gc in gloc:
        no = a - 1
        print(str(no)+gc)
        cursor.execute("INSERT INTO krtest (id,city) VALUES('%s','%s')" % (no, gc))
print("确诊更新")
for b in range(2,40):
    gqz = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(b)+']/span[2]/text()')
    for gq in gqz:
        no = b - 1
        print(str(no)+gq)
        cursor.execute("update krtest set dia = '%s' where id='%s'" % (gq, no))
print("治愈更新")
for c in range(2,40):
    gzy = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(c)+']/span[4]/text()')
    for zy in gzy:
        no = c - 1
        print(zy)
        cursor.execute("update krtest set cu = '%s' where id='%s'" % (zy, no))
print("死亡更新")
for d in range(2,40):
    gsw = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(d)+']/span[3]/text()')
    for sw in gsw:
        no = d - 1
        print(sw)
        cursor.execute("update krtest set de = '%s' where id='%s'" % (sw, no))
for i in range(1,6):
    xw = etree_html.xpath('//*[@id="epidemic_consultation"]/div['+str(i)+']/a/aside/b/text()')
    for news in xw:
        print(news)
        no=i-1
        cursor.execute("INSERT INTO krnews (id,title) VALUES(%d,'%s')" % (no, news))
conn.commit()
driver.close()
cursor.close()
print('获取完成')
os._exit(0)
