// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// debug
@R0
M=-1

// Set @color to whatever color is in R0
(SET_COLOR)
  @R0
  D=M
  @color
  M=D

(FILL_SCREEN)
  @SCREEN
  D=A
  @screen_addr
  M=D
  (FILL_NEXT_BLOCK)
    // paint current block
    @color
    D=M
    @screen_addr
    A=M
    M=D

    // set screen address to next block
    @screen_addr
    M=M+1
    @SCREEN
    D=A
    @8192
    D=D+A
    @screen_addr
    D=D-M
    @FILL_NEXT_BLOCK
    D;JGT

  @KBD
  D=M
  @SET_BLACK
  D;JGT
  @SET_WHITE
  D;JEQ
  @FILL_SCREEN
  0;JMP

(SET_BLACK)
  @R0
  M=-1
  @SET_COLOR
  0;JMP

(SET_WHITE)
  @R0
  M=0
  @SET_COLOR
  0;JMP

