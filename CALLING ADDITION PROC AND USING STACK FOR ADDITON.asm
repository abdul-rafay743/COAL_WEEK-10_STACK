;Program that defines the procedure "addition" to add two numbers
;, passed through stack, and return their sum.

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,5
    MOV BX,10
    
    PUSH AX
    PUSH BX
    
    CALL ADDITION
    
    POP AX
    POP BX
    
    .EXIT
    
MAIN ENDP
       
       
       
ADDITION PROC
    
    PUSH BP
    
    MOV BP,SP
    
    MOV AX,[BP+4]
    ADD AX,[BP+6]
    
    POP BP
    
    RET

ADDITION ENDP