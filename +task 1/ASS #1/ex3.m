.model tiny               

.code                     
org 100h                  

start:
Hello db 'Yakunin Vladimir 351 CSIT!$'
mov AH,09h
mov DX,offset Hello
int 21h
mov AX,4C00h
int 21h
end start