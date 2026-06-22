.model tiny 
.code
org 100h

START:
...
; if (x != 0) S1 else S2
cmp x, 0
je L1
... ; S1
jmp L2
L1: ... ; S2
L2: ...
...
MOV AX,4C00h
INT 21H
END START