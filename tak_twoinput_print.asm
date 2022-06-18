.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    ;input a character
    MOV AH, 1
    INT 21H
    mov bl,al   ;read character function
         ;character in AL
     
     
    mov ah,1 
    INT 21H
    mov cl,al
    
    
    MOV AH, 2   ;display character function
    MOV DL,bl  ;retrieve character
    INT 21h 
    
    MOV AH, 2   ;display character function  
    MOV DL,cl  ;retrieve character
    INT 21h 
     
     
    MOV AH,4CH
    INT 21H     ;exit to DOS
    
    MAIN ENDP

END MAIN