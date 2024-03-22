# -*- coding: utf-8 -*-
"""
Created on Sat Dec  2 23:43:24 2023

@author: karta
"""

for i in range(129):
    print(".MEAS TRAN T",end="")
    print(str(i),end="")
    print(" TRIG V(DCO_OUT) val='supply*0.5' rise=3 TD=",end="")
    print(str(50*i),end="")
    print("ns")
    print("+	          TARG V(DCO_OUT) val='supply*0.5' rise=4 TD=",end="")
    print(str(50*i),end="")
    print("ns")