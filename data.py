import pymysql
from lxml import html
import urllib.request, urllib.error
import ssl
conn = pymysql.connect( # 创建数据库连接
    host='211.54.64.56', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk', # 登录用户密码
    database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)
cursor = conn.cursor()
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
html1 = urllib.request.urlopen("https://3g.dxy.cn/newh5/view/pneumonia_peopleapp",context=ctx).read()
etree = html.etree
shi = html1.decode("UTF-8")
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
for i in range(1,40):
    content = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p['+str(i)+']/span/text()')

    for each in content:
        print(each)
        cursor.execute("INSERT INTO lo (id,location) VALUES('%s','%s')" % (i,each))

for q in qz:
    for y in ys:
        for s in sw:
            for z in zy:
                cursor.execute("INSERT INTO dom (dia,sus,de,res) VALUES('%s','%s','%s','%s')" % (q,y,s,z))
for q in whqz:
    for z in whzy:
        for s in whsw:
            cursor.execute("INSERT INTO content (id,location,diagnosis,Suspected,death,cure) VALUES('1','','%s','未确认','%s','%s')" % (q,s,z))
for a in range(2,40):
    qz = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p['+str(a)+']/span/span/span[1]/text()')
    for each in qz:
            cursor.execute("INSERT INTO content (id,diagnosis) VALUES('%s','%s')" % (a,each))
for b in range(2,40):
    ys = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p['+str(b)+']/span/span/span[2]/text()')
    for yisi in ys:
        cursor.execute("update content set Suspected='%s'  where id=%s" % (yisi, b))
for c in range(1,40):
    lc = etree_html.xpath('//*[@id="root"]/div/div[3]/div[3]/p['+str(c)+']/span/text()')
    for location in lc:
        cursor.execute("update content set location='%s'  where id=%s" % (location.replace(' ',''),c))
        conn.commit()
