;Program that defines the procedure "addition" to sum up an array of 5 elements
; and return its sum. Note: Array is always passed by reference.

.MODEL SMALL
.STACK 100H
.DATA
 ARR DB 1,2,3,4,5
 
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,OFFSET ARR    ;ADDRESS OF ARRAY
    MOV AX,5             ;SIZE OF ARRAY
    
    PUSH BX
    PUSH AX
    
    CALL ADDITION
    
    POP AX
    POP BX
    
    .EXIT
    
MAIN ENDP


ADDITION PROC
    
    PUSH BP              ;FOR POINING AT TOP OF STACK
    PUSH CX              ;
    PUSH SI
    
    MOV BP,SP
    MOV CX,[BP+8]        ;MOVING SIZE OF ARRAY IN CX
    MOV AX,[BP+10]       ;MOVING BASE ADDRESS OF ARRAY IN AX
    MOV BP,AX
    MOV SI,0
    
    LABEL1:
    ADD AL,DS:[BP+SI]
    INC SI
    LOOP LABEL1
    
    POP SI
    POP CX
    POP BP
    
    RET
    
ADDITION ENDP 