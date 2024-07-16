# Font ROM generator

'''
    Generates a VHDL type declaration for a font ROM
'''

import tkinter as tk

COLS = 8
ROWS = 8
# VHDL type declaration for ROM
DECL_ROW = "type rom_t is array(0 to {}) of ".format(ROWS - 1)
DECL_COL = "std_logic_vector({} downto 0);\n".format(COLS - 1)

class Button:
    btn = 0
    idx = 0
    colour = ["lightgray","blue"]
    
    def __init__(self, btk, root, col, row):
        self.btk = btk
        self.root = root
        self.col = col
        self.row = row
        self.btn = self.btk.Button(self.root, text = " ", \
                                   command = self.colour_change)
        self.btn.grid(column = self.col, row = self.row)
        
    def colour_change(self):
        self.idx ^= 1
        self.btn.configure(bg = self.colour[self.idx])

    def get_status(self):
        return self.idx

root = tk.Tk()
lst = [[] for i in range(ROWS)]

# Multidimensional array of Tkinter button instances
for i in range(ROWS):
    for j in range(COLS):
        lst[i].append(Button(tk, root, j, i))

root.mainloop()
bitmap = [[] for i in range(ROWS)]
string = DECL_ROW + DECL_COL + "constant ROM: rom_t := \n"
file = open("font_rom.txt",'w')

for i in range(ROWS):
    for j in range(COLS):
        bitmap[i].append(lst[i][j].get_status())
    if i == 0:
        string += "({} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\",\n"
    elif i > 0 and i < ROWS - 1:
        string += " {} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\",\n"
    else:
        string += " {} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\");"

file.writelines(string)
file.close()
print(string)
