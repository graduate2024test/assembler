.model tiny 
.code
org 100h

START:
...
MOV BH, X ;Загрузка в BH значения Х
MOV BL, Y ;Загрузка в BL значения Y
CMP BH, BL ;Сравнение BH и BL
JE MET1 ;Если BH = BL, то переход на MET1
JMP MET2 ;Иначе переход на MET2
MET1:
...
JMP MET3
MET2:
...
MET3:
MOV AX,4C00h
INT 21H
END START