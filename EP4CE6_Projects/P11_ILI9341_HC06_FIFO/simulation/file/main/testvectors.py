#Python code to generate random test vectors

import string
import random

INPUTS = 1
#OUTPUTS = 153600
OUTPUTS = 10 # TO prevent long simulation times

##ASCII_R_UPPER = "52"
##ASCII_G_UPPER = "47"
##ASCII_B_UPPER = "42"
##
##ASCII_R_LOWER = "72"
##ASCII_G_LOWER = "67"
##ASCII_B_LOWER = "62"

# Input and output test vectors
i_test_vector_lst = random.choices(["52","47","42","72","67","62","44","38"])
o_test_vector_lst = []

testcases_file = open("testcases.txt",'w')
expected_outputs_file = open("expected_outputs.txt",'w')

j = 0
o_lst = ["FF","FF"] #White
if i_test_vector_lst[0] == "52" or i_test_vector_lst[0] == "72": #Red
    o_lst = ["F8","00"]
elif i_test_vector_lst[0] == "47" or i_test_vector_lst[0] == "67": #Green
    o_lst = ["07","E0"]
elif i_test_vector_lst[0] == "42" or i_test_vector_lst[0] == "62": #Blue
    o_lst = ["00","1F"]
    
for i in range(OUTPUTS):    
    o_test_vector_hex = o_lst[j]
    j = j ^ 1;
    o_test_vector_lst.append(o_test_vector_hex)
    o_test_vector_lst.append('\n')
    
testcases_file.writelines(i_test_vector_lst)
expected_outputs_file.writelines(o_test_vector_lst)

testcases_file.close()
expected_outputs_file.close()
