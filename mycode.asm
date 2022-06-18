.model small
.stack 100h

.data
da db 25h
dc db 15h
sum db ?
.code
main proc
    mov AX,@data
    mov DS,AX
    mov AL,da
    mov BL,dc
    ADD AL,BL
    
    mov sum,AL
    
    mov AH,4CH
    int 21H
    
    
    main endp

end main