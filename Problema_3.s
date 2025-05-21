main:
    LDR R1, =0x1000        @ Dirección de la tecla 
    LDR R2, =0x2000        @ Dirección del contador 

    MOV R0, #0             @ Valor cero
    STR R0, [R1]           @ Inicializa con 0
    STR R0, [R2]          

    LDR R3, =0xE048        
    LDR R4, =0xE050       

loop:
    LDR R5, [R1]          
    LDR R6, [R2]          

    CMP R5, R3             @flecha arriba?
    BEQ increase

    CMP R5, R4             @flecha abajo?
    BEQ decrease

    B loop                 @ Si no repetir

increase:
    ADD R6, R6, #1
    STR R6, [R2]
    B loop

decrease:
    SUB R6, R6, #1
    STR R6, [R2]
    B loop
