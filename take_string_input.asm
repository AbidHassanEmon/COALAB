 .model small

.data

message1 db "Enter any string:$"

message2 db "Given string is:$"

str1 db 100 dup('$')

.code

mov ax,@data

mov ds,ax

mov ah,09h

mov dx,offset message1

int 21h

mov si,offset str1

up:

mov ah,1

int 21h

cmp al,13

je exit

mov [si],al

inc si

jmp up

exit:

mov ah,09h

mov dx,offset message2

int 21h

mov ah,09h

mov dx,offset str1

int 21h

mov ah,4ch

int 21h

end