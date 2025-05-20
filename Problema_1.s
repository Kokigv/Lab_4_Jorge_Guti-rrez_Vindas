my_2D_array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 // 2x4 array
LDR R0, =my_2D_array
MOV R1, #4// variable
MOV R2, #0// Bites iniciales
main:
    LDR R5, [R0, R2]  
    CMP R5, R1
	BGE if
	b else
	
 

if:
	
	MUL R3,R1, R5
	STR R3,[R0, R2] 
	ADD R2, R2, #4
    CMP R2, #40
	BNE main
	b exit	
else:
	ADD R3,R1, R5
	STR R3,[R0, R2] 
	ADD R2, R2, #4
	CMP R2, #40

	BNE main
	b exit
exit:	
	
	
	
	
	
	
	
