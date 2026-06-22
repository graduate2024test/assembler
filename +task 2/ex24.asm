.model tiny 
.code
org 100h

start:

MOV AX,01h
MOV BX,02h
MOV CX,20h

SUB CX,30h

PUSH BX
PUSH CX
PUSH AX

MOV CX,03h
LOUT:
	POP BX
	CALL OUTNUM
LOOP LOUT

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