import pymysql
import jieba
import re
from collections import Counter
# encoding: utf-8
conn = pymysql.connect( # 创建数据库连接
    host='gujiakai.softether.net', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk19961226', # 登录用户密码
   database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)
jieba.load_userdict("dict.txt")
cursor = conn.cursor()
cursor.execute("select content from huai")
res=cursor.fetchall()
cursor.execute("delete from wc")
cut_words=""
for con in res:
    scon=str(con)
    scon.strip('\n')
    scon = re.sub("[A-Za-z0-9\：\·\—\，\。\“ \”]", "", scon)
    cp=scon.replace('(\'',' ').replace('\',)',' ').replace('淮安区','楚州').replace('淮安','').replace('淮安市','').replace('患者','').replace('出现','').replace('旅行','').replace('我市','').replace('转至市','').replace('现住','').replace('肺炎','').replace('前往','').replace('左右','').replace('下午','').replace('至市','').replace('市级','').replace('结果','').replace('第例','').replace('肺炎男岁','').replace('送至市','').replace('附近','').replace('上午','').replace('服药','').replace('第例','').replace('新冠','').replace('检查','').replace('点分','').replace('第一','').replace('家中','').replace('岁区','').replace('一例','').replace('到市','').replace('岁区','').replace('离开','').replace('显示','').replace('史和史','').replace('目前','').replace('先后','').replace('后四院','').replace('随即','').replace('该是','').replace('女岁','').replace('男岁','').replace('四院','第四人民医院').replace('史','').replace('年','').replace('月','').replace('日','').replace('时','').replace('分','').replace('为','').replace('第','').replace('次','').replace('点','').replace('约','').replace('苏从','')
    seg_list = jieba.cut(cp,cut_all=False)
    cut_words += (" ".join(seg_list))
all_words = cut_words.split()
c = Counter()
for x in all_words:
    if len(x) > 1 and x != '\r\n':
        c[x] += 1

print('\n词频统计结果：')
for (k, v) in c.most_common(250):  # 输出词频最高的前两个词
    print("%s:%d" % (k, v))
    cursor.execute("INSERT INTO wc (world,times) VALUES('%s','%s')" % (k, v))
    conn.commit()


