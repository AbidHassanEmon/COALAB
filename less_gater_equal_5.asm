.MODEL SMALL
.STACK 100H
.CODE

.DATA
MSG DB "lESS THAN 5 $"
MSG1 DB "GATER THAN 5 $"
MSG2 DB "GIVEN INPUT IS 5 $"

MAIN PROC
MOV AX,@DATA
MOV DS,AX
; For continuous input take place END: hear

MOV AH,1
INT 21H
MOV BL,AL

MOV AH,2
MOV DL,0Dh
INT 21H 
MOV AH,2
MOV DL,0Ah
INT 21H

MOV CL,35H

CMP BL,CL
JL NEGATIVE
JE ZERO
JG POSITIVE

NEGATIVE:

LEA DX,MSG
MOV AH,9
INT 21H
JMP END

ZERO:
LEA DX,MSG2
MOV AH,9
INT 21H
JMP END

POSITIVE:
LEA DX,MSG1
MOV AH,9
INT 21H
JMP END

END:   
MOV AH,4CH
INT 21H 
    
MAIN ENDP
END MAIN