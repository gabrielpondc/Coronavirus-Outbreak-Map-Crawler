from http.client import IncompleteRead

import time
import os
import datetime
now_time = datetime.datetime.now()
time1_str = datetime.datetime.strftime(now_time, '%Y-%m-%d %H:%M:%S')
print (time1_str)
try:
            os.system("python ./bd.py")
            os.system("python ./rmrb.py")
            os.system("python ./ten.py")
except IncompleteRead:
    os.system("python ./rmrb.py")
def sleeptime(hour,min,sec):
    return hour*3600 + min*60 + sec;
second = sleeptime(1,0,0);
while 1==1:
    time.sleep(second);
    now_time = datetime.datetime.now()
    time2_str = datetime.datetime.strftime(now_time, '%Y-%m-%d %H:%M:%S')
    print (time2_str)
    try:
            os.system("python ./bd.py")
            os.system("python ./rmrb.py")
            os.system("python ./ten.py")
    except IncompleteRead:
        os.system("python ./rmrb.py")

