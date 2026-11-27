// Student Name: Mohit Tanwar
// K = 74
// Box starts at row 74
// Width = 16 pixels (1 word)
// Height = 20 rows

(LOOP)
// Check keyboard
@KBD
D=M
@75
D=D-A
@BLACK
D;JEQ

// No K pressed: white
@0
D=A
@R15
M=D
@DRAW
0;JMP

(BLACK)
// K pressed: black
@1
D=-A
@R15
M=D

(DRAW)
// Starting screen address = 18752
@18752
D=A
@R13
M=D

// Height = 20 rows
@20
D=A
@R14
M=D

(ROW)
// Draw one 16-pixel word
@R15
D=M
@R13
A=M
M=D

// Move to next screen row
@R13
M=M+1

@31
D=A
@R13
M=D+M

// Decrease row counter
@R14
MD=M-1
@ROW
D;JGT

// Repeat continuously
@LOOP
0;JMP