;PROGRAM FOR PASSING MAIN PROCEDURE/FUNCTION IN CODE SEGMENT
;Program that defines the main function in a program.

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AX,5
    MOV BX,10
    ADD AX,BX
    
    .EXIT 
    
MAIN ENDP