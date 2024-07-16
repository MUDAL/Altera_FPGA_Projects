# Font ROM generator

'''
    Generates a VHDL type declaration for a font ROM
'''

import tkinter as tk

COLS = int(input("Enter number of columns: "))
ROWS = int(input("Enter number of rows: "))
# VHDL entity + architecture
COL_NAME = "COLS"
ROW_NAME = "ROWS"
ENTITY = "entity font_rom is\n\tport();\nend font_rom;\n\n"
ARCH_START = "architecture font_rom_rtl of font_rom is\n" + \
             "\tconstant {}: integer := {};\n".format(COL_NAME,COLS) + \
             "\tconstant {}: integer := {};\n".format(ROW_NAME,ROWS)
DECL_ROW = "\ttype rom_t is array(0 to {} - 1) of ".format(ROW_NAME)
DECL_COL = "std_logic_vector(0 to {} - 1);\n".format(COL_NAME)
ARCH_END = "\nbegin\nend font_rom_rtl;\n"

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
string = ENTITY + ARCH_START + DECL_ROW + DECL_COL + \
         "\tconstant ROM: rom_t := \n"
file = open("font_rom.txt",'w')

for i in range(ROWS):
    for j in range(COLS):
        bitmap[i].append(lst[i][j].get_status())
    if i == 0:
        string += "\t\t\t({} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\",\n"
    elif i > 0 and i < ROWS - 1:
        string += "\t\t\t {} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\",\n"
    else:
        string += "\t\t\t {} => \"".format(i) + ''.join([str(bit) for bit in bitmap[i]]) + \
                  "\");"

string += ARCH_END
file.writelines(string)
file.close()
print(string)
