with open(r"C:\Users\karta\OneDrive\桌面\S3 LAB\ADIC\05A. Circuit Simulation with HSPICE\Lab05B\DATA.txt", "r") as file:
    data = file.readlines()

period = []
for line in data:
    n_pos = line.find("n")
    p_pos = line.find("p")
    if n_pos != -1 and p_pos != -1:
        start_pos = min(n_pos, p_pos)
    elif n_pos != -1:
        start_pos = n_pos
    elif p_pos != -1:
        start_pos = p_pos
    else:
        continue

    number_str = ""
    for i in range(start_pos - 1, -1, -1):
        if line[i] == " ":
            break
        number_str += line[i]

    number_str = float(number_str[::-1])
    if(number_str > 100):
        number_str = number_str / 1000

    period.append(number_str)

for i in range(128):
    print("129'b" + str(0) * (129 - i) + str(1) * i + " : period = " + str(period[i]) + ";")
