#Python code to generate random test vectors

import string
import random

TESTCASES = 30

# Input and output test vectors
i_test_vector_lst = []
o_test_vector_lst = []

testcases_file        = open("../file/ram/testcases.txt",'w')
expected_outputs_file = open("../file/ram/expected_outputs.txt",'w')
status_reports_file   = open("../file/ram/status_reports.txt",'w')

status_reports_file.close()

lst = [0,1,2,3]
str_lst = [str(i) for i in lst]

for i in range(TESTCASES):
    test_vector_hex = random.choices(str_lst)[0]
        
    i_test_vector_lst.append(test_vector_hex)
    i_test_vector_lst.append('\n')
    o_test_vector_lst.append(test_vector_hex)
    o_test_vector_lst.append('\n')
    
testcases_file.writelines(i_test_vector_lst)
expected_outputs_file.writelines(o_test_vector_lst)

testcases_file.close()
expected_outputs_file.close()
