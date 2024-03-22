import math

for i in range(128):
    blank = 4 - math.floor(math.log(50*(i+1), 10))
    print(str(50*i) + blank*" " + str(0)*(128-i) + str(1)*i + " 0")