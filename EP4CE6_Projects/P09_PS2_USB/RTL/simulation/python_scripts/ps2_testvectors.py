#Python code to generate random test vectors

import string
import random

# PS/2 clock rate ranges from 10kHz to 16.7kHz.  
# PS/2 data is sampled on the falling edge of the PS/2 clock.  
# Data is transmitted LSB first.  
# A data packet contains 11 bits:
# 1. 1 start bit  
# 2. 8 data bits  
# 3. 1 parity bit  
# 4. 1 stop bit

NUM_OF_BITS = 12
BITS_IN_NIBBLE = 4
LEN_I = NUM_OF_BITS / BITS_IN_NIBBLE # Number of nibbles in input vectors
LEN_O = 2 # Number of nibbles in output vectors
NUM_BASE = 2
TESTCASES = 300
START_BIT = '0'
STOP_BIT = '1'
PADDED_MSB = '1' # Redundant (only 11 bits are actually required by the PS/2 design)

# Input and output test vectors
i_test_vector_lst = []
o_test_vector_lst = []

testcases_file        = open("../file/ps2/testcases.txt",'w')
expected_outputs_file = open("../file/ps2/expected_outputs.txt",'w')
status_reports_file   = open("../file/ps2/status_reports.txt",'w')

status_reports_file.close()

def generate_test_vector_hex(test_vector_int, num_of_nibbles):
    test_vector_hex = format(test_vector_int, 'X')
    vector_len = len(test_vector_hex)
    len_diff = int(num_of_nibbles - vector_len)
    if len_diff > 0:
        test_vector_hex = '0' * len_diff + test_vector_hex
    return test_vector_hex

for i in range(TESTCASES):
    test_vector_bin = ''.join(random.choices(string.digits[0:2], k = NUM_OF_BITS - 3)) # Parity + 8 data bits
    i_test_vector_int = int(PADDED_MSB + STOP_BIT + test_vector_bin + START_BIT, NUM_BASE)
    o_test_vector_int = int(test_vector_bin[1:], NUM_BASE) # Ignore parity bit

    i_test_vector_hex = generate_test_vector_hex(i_test_vector_int, LEN_I)
    o_test_vector_hex = generate_test_vector_hex(o_test_vector_int, LEN_O)
    
    i_test_vector_lst.append(i_test_vector_hex)
    i_test_vector_lst.append('\n')
    o_test_vector_lst.append(o_test_vector_hex)
    o_test_vector_lst.append('\n')
    
testcases_file.writelines(i_test_vector_lst)
expected_outputs_file.writelines(o_test_vector_lst)

testcases_file.close()
expected_outputs_file.close()
