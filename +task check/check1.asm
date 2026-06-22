.model tiny               
.code                    
org 100h                  

start:

MOV AH,02h
MOV DL,41h
INT 21h
MOV AX,4C00h
INT 21h

END start