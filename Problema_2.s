MOV R1, #7// variable
MOV R2, #1// inicio de factorial
MOV R3, #1// Resultado



Main:

	MUL R3,R2, R3

	CMP R2, R1
	BEQ Exit
	b Suma

Suma:
	ADD R2, R2, #1
	b Main

Exit:
	