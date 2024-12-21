.MODEL SMALL
.STACK
.DATA
    MSG1    DB  10,13,  'Enter First Number: $'
    MSG2    DB  10,13,  'Enter Second Number: $'
    MSG3    DB  10,13,  'SUM: $'

    NUM1    DB  0
    NUM2    DB  0
    DIG1    DB  0
    DIG2    DB  0
    ANS     DB  0

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

ENT1:
    MOV DX,OFFSET MSG1  ;display prompt for first number
    MOV AH,09H
    int 21h

    MOV AH,01H      ;input first number
    INT 21H

    CMP AL,'0'      ;check if it is in range from 0 - 9
    JB ENT1
    CMP AL,'9'
    JA ENT1

    SUB AL,30H      ;convert to real number entered
    MOV DIG1,AL

    MOV AH,01H      ;input first number
    INT 21H

    CMP AL,'0'      ;check if it is in range from 0 - 9
    JB ENT1
    CMP AL,'9'
    JA ENT1

    SUB AL,30H      ;convert to real number entered
    MOV DIG2,AL

    MOV AL,DIG1     ;convert 1st digit to tens place
    MOV BL,10
    MUL BL

    MOV NUM1,AL     ;add 1st digit to 2nd digit
    MOV AL,DIG2
    ADD NUM1,AL


ENT2:
    MOV DX,OFFSET MSG2  ;display prompt for second number
    MOV AH,09H
    int 21h

    MOV AH,01H      ;input second number
    INT 21H

    CMP AL,'0'      ;check if it is in range from 0 - 9
    JB ENT2
    CMP AL,'9'
    JA ENT2

    SUB AL,30H      ; convert to real number entered
    MOV DIG1,AL

    MOV AH,01H      ;input second number
    INT 21H

    CMP AL,'0'      ;check if it is in range from 0 - 9
    JB ENT2
    CMP AL,'9'
    JA ENT2

    SUB AL,30H      ;convert to real number entered
    MOV DIG2,AL

    MOV AL,DIG1
    MOV BL,10
    MUL BL

    MOV NUM2,AL
    MOV AL,DIG2
    ADD NUM2,AL


ADDITION:
    MOV BL,NUM1
    ADD BL,NUM2

    CALL CHANGE

    MOV DX,OFFSET MSG3
    CALL RESULT


MAIN ENDP

CHANGE PROC
    MOV AH,0
    MOV AL,BL

    MOV BL,10
    DIV BL

    MOV BL,AL
    MOV BH,AH

    ADD BH,30H      ; convert to ascii code
    MOV ANS,BH

    MOV AH,0
    MOV AL,BL
    MOV BL,10
    DIV BL

    MOV BL,AL
    MOV BH,AH

    ADD BH,30h      ; convert to ascii code
    ADD BL, 30h     ; covert to ascii code

    RET
CHANGE ENDP

RESULT PROC

    MOV AH,09H
    INT 21H

    MOV DL,BL
    MOV AH,02H
    INT 21H

    MOV DL,BH
    MOV AH,02H
    INT 21H

    MOV DL,ANS
    MOV AH,02H
    INT 21H 
    
    mov ah,4ch
    int 21h

    RET
RESULT ENDP


END

