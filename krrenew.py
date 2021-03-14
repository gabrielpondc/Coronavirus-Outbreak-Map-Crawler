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
import prettytable as pt
tb = pt.PrettyTable()
tb2 = pt.PrettyTable()
tb2.field_names = ["现存确诊", "治愈", "死亡", "累计确诊"]
url = 'https://coronaboard.kr/'
driver = webdriver.Chrome(executable_path=r'/Users/gabrielpondc/Desktop/test/chromedriver')
driver.get(url)
time.sleep(4)
shi = driver.page_source.encode('utf-8')
etree = html.etree
etree_html = etree.HTML(shi)
qz=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[1]/p[1]/text()')
sw=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[2]/p[1]/text()')
zy=etree_html.xpath('//*[@id="top"]/div[6]/div[2]/div[3]/p[1]/text()')
for q in qz:
    for s in sw:
        for z in zy:
            que=int(q.replace(',',''))
            si=int(s.replace(',',''))
            zhi=int(z.replace(',',''))
            xc=que-si-zhi
            tb2.add_row([xc,zhi,si,que])
            #print("现存确诊:"+str(xc)+"治愈:"+str(zhi)+"死亡:"+str(si)+"累计确诊:"+str(que))
l={}
a=0
for i in range(1,100):  
    qy=etree_html.xpath('//*[@id="kr-table"]/div/div/table/tbody/tr['+str(i)+']/td[2]/text()')
    for q in qy:
        a+=1
        l[a]={}
        l[a]['地区']=q.replace('서울','首尔市').replace('경기','京畿道').replace('대구','大邱市').replace('인천','仁川市').replace('부산','釜山市').replace('경북','庆尚北道').replace('검역','海外流入').replace('충남','忠清南道').replace('경남','庆尚南道').replace('광주','光州市').replace('강원','江原道').replace('충북','忠清北道').replace('전북','全罗北道').replace('대전','大田市').replace('울산','蔚山市').replace('전남','全罗南道').replace('제주','济州岛').replace('세종','世宗市')
a=0
for i in range(1,100):  
    qz=etree_html.xpath('//*[@id="kr-table"]/div/div/table/tbody/tr['+str(i)+']/td[3]/text()')
    for c in qz:
        a+=1
        l[a]['累计确诊']=int(c.replace(',',''))
a=0
for i in range(1,100):  
    xc=etree_html.xpath('//*[@id="kr-table"]/div/div/table/tbody/tr['+str(i)+']/td[4]/text()')
    for x in xc:
        a+=1
        l[a]['现存确诊']=int(x.replace(',',''))
a=0
for i in range(1,100):  
    sw=etree_html.xpath('//*[@id="kr-table"]/div/div/table/tbody/tr['+str(i)+']/td[5]/text()')
    for s in sw:
        a+=1
        l[a]['死亡']=int(s.replace(',',''))
a=0
for i in range(1,100):  
    zy=etree_html.xpath('//*[@id="kr-table"]/div/div/table/tbody/tr['+str(i)+']/td[6]/text()')
    for z in zy:
        a+=1
        l[a]['治愈']=int(z.replace(',',''))
tb.field_names = ["地区", "现存确诊", "累计确诊", "治愈","死亡"]
for i in l:
    tb.add_row([l[i]['地区'],l[i]['累计确诊'],l[i]['现存确诊'],l[i]['治愈'],l[i]['死亡']])
    #print([l[i]['地区']+' 累计确诊: '+str(l[i]['累计确诊'])+' 现存确诊: '+str(l[i]['现存确诊'])+' 治愈: '+str(l[i]['治愈'])+' 死亡: '+str(l[i]['死亡']))
print(tb2)
print(tb)

driver.quit()
os._exit(0)
