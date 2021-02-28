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
    host='211.54.64.56', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk19961226', # 登录用户密码
   database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)
cursor = conn.cursor()
url = "https://news.sina.cn/project/fy2020/yq_province.shtml?province=jiangsu"
driver = webdriver.Chrome(executable_path=r'F:\00\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(3)
shi = driver.page_source
etree = html.etree
cursor.execute("delete from js")
cursor.execute("delete from jiangsu")
etree_html = etree.HTML(shi)
qz=etree_html.xpath('/html/body/div[1]/div[2]/div/div[2]/div[1]/span/b/text()')
zy=etree_html.xpath('/html/body/div[1]/div[2]/div/div[2]/div[2]/span/b/text()')
sw=etree_html.xpath('/html/body/div[1]/div[2]/div/div[2]/div[3]/span/b/text()')
for q in qz:
        for s in sw:
            for z in zy:
                print("获取区域数据")
                print(q,s,z)
                cursor.execute("INSERT INTO js (dia,cur,de) VALUES('%s','%s','%s')" % (q,z,s))
print('地区')
for i in range(2,13):
    content = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(i)+']/span[1]/text()')
    for each in content:
        no=i-1
        print(str(no)+":"+each)
        cursor.execute("INSERT INTO jiangsu (id,loc) VALUES(%s,'%s')" % (no,each))
print('确诊')
for a in range(2,13):
    quezheng = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(a)+']/span[2]/text()')
    for qz in quezheng:
        no=a-1
        print(str(no)+":"+qz)
        cursor.execute("update jiangsu set dia='%s' where id=%s" % (qz, no))
print('治愈')
for b in range(2,13):
    zhiyu = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(b)+']/span[3]/text()')
    for zy in zhiyu:
        no=b-1
        print(str(no)+":"+zy)
        cursor.execute("update jiangsu set res='%s' where id=%s" % (zy, no))
print('死亡')
for c in range(2,13):
    siwang = etree_html.xpath('//*[@id="mylist"]/div[2]/div['+str(c)+']/span[4]/text()')
    for sw in siwang:
        no=c-1
        print(str(no)+":"+sw)
        cursor.execute("update jiangsu set de='%s' where id=%s" % (sw, no))
conn.commit()
driver.close()
cursor.close()
print("江苏数据获取成功")
os._exit(0)
