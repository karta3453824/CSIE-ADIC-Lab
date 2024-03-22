time = 0
time_inr = 15
time_tr = 5
phase_err = 0.040

f = open(r"C:\Users\karta\OneDrive\桌面\DeadZone.txt", "w")

for i in range(35):
    print(str(format(time, ".3f")) + " " + "1 0 0", file=f)
    print(str(format(time + phase_err, ".3f")) + " " + "1 1 0", file=f)
    print(str(format(time + time_tr, ".3f")) + " " + "0 1 0", file=f)
    print(str(format(time + time_tr + phase_err, ".3f")) + " " + "0 0 0", file=f)
    print("\n", file=f)

    time = time + time_inr

    phase_err = phase_err - 0.001

f.close()
