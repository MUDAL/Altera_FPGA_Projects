#Python code to generate random test vectors

import string
import random

NUM_OF_BITS = 12
BITS_IN_NIBBLE = 4
LEN = NUM_OF_BITS / BITS_IN_NIBBLE
NUM_BASE = 2
TESTCASES = 300

#Input and output test vectors
i_test_vector_lst = []
o_test_vector_lst = []

testcases_file = open("testcases.txt",'w')
expected_outputs_file = open("expected_outputs.txt",'w')

for i in range(TESTCASES):
    test_vector_bin = ''.join(random.choices(string.digits[0:2], k = NUM_OF_BITS - 2))
    test_vector_bin = "00" + test_vector_bin
    test_vector_int = int(test_vector_bin, NUM_BASE)
    test_vector_hex = format(test_vector_int, 'X')

    vector_len = len(test_vector_hex)
    len_diff = int(LEN - vector_len)
    if len_diff > 0:
        test_vector_hex = '0' * len_diff + test_vector_hex

    i_test_vector_lst.append('0' + test_vector_hex)
    i_test_vector_lst.append('\n')
    o_test_vector_lst.append(test_vector_hex)
    o_test_vector_lst.append('\n')

testcases_file.writelines(i_test_vector_lst)
expected_outputs_file.writelines(o_test_vector_lst)

testcases_file.close()
expected_outputs_file.close()
