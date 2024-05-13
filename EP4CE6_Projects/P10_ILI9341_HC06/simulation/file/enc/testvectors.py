#Python code to generate random test vectors

import string
import random

TESTCASES = 300

# Input and output test vectors
i_test_vector_lst = []
o_test_vector_lst = []

testcases_file = open("testcases.txt",'w')
expected_outputs_file = open("expected_outputs.txt",'w')

for i in range(TESTCASES):
    lst = [52,40,75,52,72,47,67,42,62,11,34,88,14,33]
    str_lst = [str(i) for i in lst]
    i_test_vector_hex = random.choices(str_lst)[0]
    
    o_test_vector_hex = '3' #W
    if i_test_vector_hex == "52" or i_test_vector_hex == "72":
        o_test_vector_hex = '0' #R
    elif i_test_vector_hex == "47" or i_test_vector_hex == "67":
        o_test_vector_hex = '1' #G
    elif i_test_vector_hex == "42" or i_test_vector_hex == "62":
        o_test_vector_hex = '2' #B
        
    i_test_vector_lst.append(i_test_vector_hex)
    i_test_vector_lst.append('\n')
    o_test_vector_lst.append(o_test_vector_hex)
    o_test_vector_lst.append('\n')
    
testcases_file.writelines(i_test_vector_lst)
expected_outputs_file.writelines(o_test_vector_lst)

testcases_file.close()
expected_outputs_file.close()
