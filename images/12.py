user_count = 0
passwd_count = 0

for i in range(3):
    username = input("请输入用户名：")
    if username == "root":
        for j in range(3):
            passwd = input("请输入密码：")
            if passwd == "westos":
                print("登录成功！！")
                break
            else:
                print("密码错误，请重新输入！！")
                passwd_count += 1
                if passwd_count >= 3:
                    print("ERROR!!")
                    break
else:
    print("您不是合法的用户，请输入新的用户名！！")
