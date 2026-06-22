.model tiny 
.code
org 100h

START:
...
MOV AH,1 ;Занести в AH первую цифру 1
MOV AL,0 ;Подготовить регистр результата
MOV CX,9 ;Количество суммируемых цифр
met:
ADD AL,AH ;Прибавить к результату очередную цифру из AH
INC AH ;Увеличить AH на единицу
LOOP met ;Если CX <>0 то осуществить переход на met
...
MOV AX,4C00h
INT 21H
END START