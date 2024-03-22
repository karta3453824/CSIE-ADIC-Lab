sp = 0
for i in range(130):
    sp = 1 - int(i/100)
    if(i < 10):
        sp+=1
    print("8'd" + str(i) + ": " + " "*sp + "out_129_code = 129'b" + (129-i)*str(0) + i*str(1) + ";")