.model tiny 
.code
org 100h

start:

MOV BX,03h
ADD BX,30h
MOV AH,02h
MOV DL,BL
INT 21h
MOV AX,4C00h
INT 21h    

OUTNUM PROC

RET
OUTNUM ENDP

end start