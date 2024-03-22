import numpy as np

# 指定隨機數個數
n = 1000

# 指定平均值和標準差
mu = 0  # 平均值
sigma = 1.5  # 標準差

# 生成符合指定平均值和標準差的常態分佈隨機數
random_numbers = np.random.normal(mu, sigma, n)

# 將數值寫入txt檔
with open(r"C:\Users\karta\OneDrive\桌面\S3 LAB\ADIC\04A. Digital Modeling with Verilog\Lab04B\nd.txt", "w") as file:
    for number in random_numbers:
        file.write(str(number) + "\n")

print(f"{n}個常態分佈數值已經寫入到nd.txt檔案中。")
