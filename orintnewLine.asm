.MODEL SMALL
.STACK 100H
.CODE

 

MAIN PROC
    ;MOV AX,@DATA
    ;MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H
    
    MOV DL,BL 
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    
    MOV DL,BH 
    INT 21H 
    
    
MAIN ENDP
END MAIN