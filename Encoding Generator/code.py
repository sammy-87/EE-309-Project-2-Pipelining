# Reads code from code.txt and writes encoding into encoding.txt (duh)

import pdb

ifile = open("code.txt","r")
lines = ifile.readlines()
ofile = open("encoding.txt","w")

for line in lines:
	words = line.split()
	output = ""
	if words[0] == "ADD":
		output1 = "0000"
		output5 = "000"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "ADC":
		output1 = "0000"
		output5 = "010"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "ADZ":
		output1 = "0000"
		output5 = "001"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "ADI":
		output1 = "0001"
		output5 = "000"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		output4 = words[3]

		output = output1+output2+output3+output4

	elif words[0] == "NDU":
		output1 = "0010"
		output5 = "000"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "NDC":
		output1 = "0010"
		output5 = "010"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "NDZ":
		output1 = "0010"
		output5 = "001"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		if words[3] == "R0":
			output4 = "000"
		elif words[3] == "R1":
			output4 = "001"
		elif words[3] == "R2":
			output4 = "010"
		elif words[3] == "R3":
			output4 = "011"
		elif words[3] == "R4":
			output4 = "100"
		elif words[3] == "R5":
			output4 = "101"
		elif words[3] == "R6":
			output4 = "110"
		elif words[3] == "R7":
			output4 = "111"

		output = output1+output2+output3+output4+output5

	elif words[0] == "LHI":
		output1 = "0011"
		output5 = "000"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		output3 = words[2]

		output = output1+output2+output3

	elif words[0] == "LW":
		output1 = "0100"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		output4 = words[3]

		output5 = "000"

		output = output1+output2+output3+output4

	elif words[0] == "SW":
		output1 = "0101"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		output4 = words[3]

		output5 = "000"

		output = output1+output2+output3+output4		

	elif words[0] == "LM":
		output1 = "0110"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		output3 = "0"
		output4 = words[2]

		output5 = "000"

		output = output1+output2+output3+output4

	elif words[0] == "SM":
		output1 = "0111"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		output3 = "0"
		output4 = words[2]

		output5 = "000"

		output = output1+output2+output3+output4
	
	elif words[0] == "BEQ":
		output1 = "1100"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		output4 = words[3]

		output5 = "000"

		output = output1+output2+output3+output4


	elif words[0] == "JAL":
		output1 = "1000"
		output5 = "000"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		output3 = words[2]

		output = output1+output2+output3

	elif words[0] == "JLR":
		output1 = "1001"

		if words[1] == "R0":
			output2 = "000"
		elif words[1] == "R1":
			output2 = "001"
		elif words[1] == "R2":
			output2 = "010"
		elif words[1] == "R3":
			output2 = "011"
		elif words[1] == "R4":
			output2 = "100"
		elif words[1] == "R5":
			output2 = "101"
		elif words[1] == "R6":
			output2 = "110"
		elif words[1] == "R7":
			output2 = "111"

		if words[2] == "R0":
			output3 = "000"
		elif words[2] == "R1":
			output3 = "001"
		elif words[2] == "R2":
			output3 = "010"
		elif words[2] == "R3":
			output3 = "011"
		elif words[2] == "R4":
			output3 = "100"
		elif words[2] == "R5":
			output3 = "101"
		elif words[2] == "R6":
			output3 = "110"
		elif words[2] == "R7":
			output3 = "111"

		output4 = "000000"

		output5 = "000"

		output = output1+output2+output3+output4



	ofile.write("\""+output+"\""+",")
ofile.write(" others => X"+"\""+"F000"+"\"")
# pdb.set_trace()
