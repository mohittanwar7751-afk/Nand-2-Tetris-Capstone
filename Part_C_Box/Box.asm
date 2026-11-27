
// Student: Mohit Tanwar
// K = 74
// Starting row = 74
// Width = 48 pixels = 3 words
// Height = 20 rows
// Starting address = 16384 + (32 * 74) = 18752

(LOOP)
@KBD
D=M
@BLACK
D;JGT

// No key: erase box
@0
D=A
@R15
M=D
@DRAW
0;JMP

(BLACK)
// Key pressed: draw black
@1
D=-A
@R15
M=D

(DRAW)
@18752
D=A
@R13
M=D

@20
D=A
@R14
M=D

(ROW)
// First word
@R15
D=M
@R13
A=M
M=D

// Second word
@R13
M=M+1
@R15
D=M
@R13
A=M
M=D

// Third word
@R13
M=M+1
@R15
D=M
@R13
A=M
M=D

// Advance to next row
@30
D=A
@R13
M=D+M

@R14
MD=M-1
@ROW
D;JGT

@LOOP
0;JMP
