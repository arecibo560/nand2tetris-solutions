// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

//loop to R1, setting SUM = SUM + R0

	@R0
	D=M
	@x	
	M=D	//Set x = R0
	
	@R1
	D=M
	@y
	M=D	//Set y = R1
	
	@0
	D=A
	@R2
	M=D	//Set result = 0


(LOOP)		//Loop until x is zero
		//begin setup loop
	@x
	D=M
	@END
	D;JLE	//if x <=0
		//end setup loop

		//begin loop
	@y
	D=M
	@R2
	M=D+M

	@1
	D=A
	@x
	M=M-D	//reduce x by 1	
		//end loop
	
	@LOOP
	0;JMP
(END)
	@END
	0;JMP
	
