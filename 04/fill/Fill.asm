// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

	@8192		//Address at the end of the screen
	D=A
	@scwd		//Address of the current screen word
	M=D
	
	@i
	M=0		//use i to increment through the words on the screen

(LOOP)
	@SCREEN		//get the current screen word address
	D=A
	@i
	D=D+M
	@scwd
	M=D	

	@i		//increment i
	M=M+1
	D=M
	@scwd
	D=D-M

	@scwd		//set the current screen word to black
	D=M
	A=D
	M=-1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP
