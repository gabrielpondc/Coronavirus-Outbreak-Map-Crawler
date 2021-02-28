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
url2 = 'https://news.sina.cn/zt_d/yiqing0121'
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url2)
time.sleep(3)
shi = driver.page_source
etree = html.etree
cursor.execute("delete from news")
cursor.execute("delete from global")
etree_html = etree.HTML(shi)
ys = etree_html.xpath('//*[@id="titleChinaEcharts"]/div/div[2]/div[3]/span/b/text()')
for y in ys:
    print(y)
    cursor.execute("update dom set sus = '%s' where id=1" % (y))
print("地点更新")
for a in range(2,40):
    gloc = etree_html.xpath('//*[@id="worldTable"]/div['+str(a)+']/span[1]/text()')
    for gc in gloc:
        no = a - 1
        print(str(no)+gc)
        cursor.execute("INSERT INTO global (id,location) VALUES('%s','%s')" % (no, gc))
print("确诊更新")
for b in range(2,40):
    gqz = etree_html.xpath('//*[@id="worldTable"]/div['+str(b)+']/span[3]/text()')
    for gq in gqz:
        no = b - 1
        print(str(no)+gq)
        cursor.execute("update global set dia = '%s' where id='%s'" % (gq, no))
print("治愈更新")
for c in range(2,40):
    gzy = etree_html.xpath('//*[@id="worldTable"]/div['+str(c)+']/span[6]/text()')
    for zy in gzy:
        no = c - 1
        print(zy)
        cursor.execute("update global set res = '%s' where id='%s'" % (zy, no))
print("死亡更新")
for d in range(2,40):
    gsw = etree_html.xpath('//*[@id="worldTable"]/div['+str(d)+']/span[5]/text()')
    for sw in gsw:
        no = d - 1
        print(sw)
        cursor.execute("update global set de = '%s' where id='%s'" % (sw, no))
for i in range(1,6):
    xw = etree_html.xpath('//*[@id="timeline_9"]/section['+str(i)+']/div/a/text()')
    for news in xw:
        print(news)
        no=i
        cursor.execute("INSERT INTO news (id,con) VALUES(%d,'%s')" % (no, news))
conn.commit()
driver.close()
cursor.close()
print('获取完成')
os._exit(0)
