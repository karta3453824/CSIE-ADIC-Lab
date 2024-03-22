time = 10.000
time_inr = 5
time_tr = 0.5
phase_err = 0.060

f = open(r"C:\Users\karta\OneDrive\桌面\Input.txt", "w")

for i in range(19):
    print(str(format(time, ".3f")) + "    " + "1 0 1", file=f)
    print(str(format(time + phase_err, ".3f")) + "    " + "1 1 1", file=f)
    print(str(format(time + time_tr, ".3f")) + "    " + "0 1 1", file=f)
    print(str(format(time + time_tr + phase_err, ".3f")) + "    " + "0 0 1", file=f)
    print("\n", file=f)

    time = time + time_inr

    if time_inr <= 2:
        time_inr = time_inr - 0.1
    else:
        time_inr = time_inr - 1

f.close()
