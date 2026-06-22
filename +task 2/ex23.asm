.model tiny 
.code
org 100h

start:

MOV BX,03h
CALL OUTNUM
MOV AX,4C00h
INT 21h    

OUTNUM PROC
ADD BX,30h
MOV AH,02h
MOV DL,BL
INT 21h
RET
OUTNUM ENDP

end start