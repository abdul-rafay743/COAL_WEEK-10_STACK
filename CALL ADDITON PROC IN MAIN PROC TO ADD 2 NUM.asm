;CALLING ADDITION PROC FOR ADDING 2 NUMBERS THROUGH REGISTER
;Program that defines the procedure addition to add two numbers, passed through registers, and return their sum.


.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,10
    MOV BX,5 
    
    CALL ADDITION
    
    .EXIT
    
MAIN ENDP


ADDITION PROC
    
    ADD AX,BX
    
    RET
ADDITION ENDP