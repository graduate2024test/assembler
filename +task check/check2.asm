.model small
.stack 100h
.386
.code

start:


;MOV AL,[BX] ;Ѕаза Ц в DS, смещение Ц в BX
;DS:0370h

MOV BX,0370h
MOV WORD PTR[BX+0],31
MOV WORD PTR[BX+1],2567
MOV WORD PTR[BX+2],4287
MOV WORD PTR[BX+3],133
MOV WORD PTR[BX+4],5648

XOR AX,AX

ADD AX,[BX+4]



; јлгоритм вывода числа "поразр€дно"
;MOV AX,65535
MOV BX,10 
MOV CX,0h				
L2: 
MOV DX,0h  				
DIV BX					
PUSH DX					
INC CX					
CMP AX, 0				
JE L1
JMP L2	
L1: 		
MET:					
POP DX						
CALL PRINT					
LOOP MET 

mov ax,4C00h
int 21h

PRINT PROC
PUSH AX
MOV AH,02h
ADD DL,30h
INT 21h
POP AX
RET
PRINT ENDP

end start