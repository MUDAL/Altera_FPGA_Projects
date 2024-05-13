#Python code to generate random test vectors

import string
import random

INPUTS = 1
OUTPUTS = 153600 

# Input and output test vectors
i_test_vector_lst = random.choices(['0','1','2','3'])
o_test_vector_lst = []

testcases_file = open("testcases.txt",'w')
expected_outputs_file = open("expected_outputs.txt",'w')

j = 0
o_lst = ["FF","FF"] #White
if i_test_vector_lst[0] == '0': #Red
    o_lst = ["F8","00"]
elif i_test_vector_lst[0] == '1': #Green
    o_lst = ["07","E0"]
elif i_test_vector_lst[0] == '2': #Blue
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
