.model small
.286
.stack 100h
.data
Arr dw 31,2567,4287,133,5648
.code
start:
    mov ax,@data
    mov ds,ax
    mov es,ax
 
    cld
    lea si,Arr
    mov di,370h
    mov cx,5
rep movsw
 
    xor ax,ax
    mov si,370h
    mov cx,5
jmpA:
    mov bx,[si]
    add ax,bx
    add si,2
    loop jmpA
 
    mov bx,10
    xor cx,cx
jmpB:
    xor dx,dx
    div bx
    add dl,'0'
    push dx
    inc cx
    or ax,ax
    jnz jmpB
 
    mov ah,2
jmpC:
    pop dx
    int 21h
    loop jmpC
 
    mov ah,8
    int 21h
    mov ah, 4ch
    int 21h
end start