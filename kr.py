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
conn = pymysql.connect( # 创建数据库连接
    host='localhost', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk19961226', # 登录用户密码
    database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)
cursor = conn.cursor()
url = 'https://coronaboard.kr/'
driver = webdriver.Chrome(executable_path=r'C:\Users\GabrielPondC\Desktop\phantomjs-2.1.1-windows\bin\chromedriver.exe')
driver.get(url)
time.sleep(4)
shi = driver.page_source
etree = html.etree
etree_html = etree.HTML(shi)
qz=etree_html.xpath('//*[@id="top"]/div[5]/div[2]/div[1]/p[1]/text()')
ys=etree_html.xpath('//*[@id="top"]/div[5]/div[2]/div[6]/p[1]/text()')
zy=etree_html.xpath('//*[@id="top"]/div[5]/div[2]/div[3]/p[1]/text()')
sw=etree_html.xpath('//*[@id="top"]/div[5]/div[2]/div[2]/p[1]/text()')

for q in qz:
    for y in ys:
        for s in sw:
            for z in zy:
                dia=q.replace(',','')
                de=s.replace(',','')
                cur=z.replace(',','')
                sus=y.replace(',','')
                print(dia,de,cur,sus)
                cursor.execute("update kr set dia='%s',cur='%s',de='%s',sus='%s' where id=1" % (dia,cur,de,sus))
                conn.commit()
driver.quit()
print("境内信息更新完成")
os._exit(0)

