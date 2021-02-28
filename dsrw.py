import pymysql
import re
from collections import Counter
import datetime
import threading
# encoding: utf-8
conn = pymysql.connect( # 创建数据库连接
    host='gujiakai.softether.net', # 要连接的数据库所在主机ip
    user='root', # 数据库登录用户名
    password='gjk19961226', # 登录用户密码
   database='virus', # 连接的数据库名，也可以后续通过cursor.execture('user test_db')指定
    charset='utf8mb4' # 编码，注意不能写成utf-8
)



def func():
    cursor = conn.cursor()
    cursor.execute("select kr.dia-(b.dia+b.cur+b.de) ondia,kr.dia,kr.de,kr.cur from (SELECT * FROM krhistory WHERE DATEDIFF(time,NOW())=-2) b,kr")
    res=cursor.fetchall()
    for con in res:
        newdia=int(con[0])
        dia=int(con[1])
        de=int(con[2])
        cur=int(con[3])
    last_time = now_time + datetime.timedelta(days=-1)
    last_year = last_time.date().year
    last_month = last_time.date().month
    last_day = last_time.date().day
    last_time = datetime.datetime.strptime(str(last_year)+"-"+str(last_month)+"-"+str(last_day), "%Y-%m-%d")
    last=str(last_time).replace(' 00:00:00','')
    print(last)
    cursor.execute("INSERT INTO krhistory (time,sus,dia,cur,de) VALUES('%s','%s','%s','%s','%s')" % (last,newdia,dia,cur,de))
    conn.commit()
    #如果需要循环调用，就要添加以下方法
    timer = threading.Timer(86400, func)
    timer.start()

# 获取现在时间
now_time = datetime.datetime.now()
# 获取明天时间
next_time = now_time + datetime.timedelta(days=+1)
next_year = next_time.date().year
next_month = next_time.date().month
next_day = next_time.date().day
# 获取明天3点时间
next_time = datetime.datetime.strptime(str(next_year)+"-"+str(next_month)+"-"+str(next_day)+" 00:00:00", "%Y-%m-%d %H:%M:%S")
# # 获取昨天时间
# last_time = now_time + datetime.timedelta(days=-1)

# 获取距离明天3点时间，单位为秒
timer_start_time = (next_time - now_time).total_seconds()
print(timer_start_time)
# 54186.75975
#定时器,参数为(多少时间后执行，单位为秒，执行的方法)
timer = threading.Timer(timer_start_time, func)
timer.start()
