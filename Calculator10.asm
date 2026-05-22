Title Menu-Driven Programming
;Write a program that displays a menu for addition, subtraction, multiplication, 
;division(quotient) and division(remainder/modulo) on two unsigned integers

.STACK 100h
.DATA
    MENU DB 10, 13, "-------------MAIN MENU-------------"
         DB 10, 13, "1.Addition"
         DB 10, 13, "2.Subtraction"
         DB 10, 13, "3.Multiplication"
         DB 10, 13, "4.Division (Quotient)"
         DB 10, 13, "5.Division (Remainder/Modulo)"
         DB 10, 13, "6.Exit"
         DB 10, 13, "ENTER YOUR CHOICE: $"
    RES DB 10, 13, "YOUR ANSWER IS: "
    OP1 DW ?
    OP2 DW ?
    RESULT DW ?
    CHAR DB ?
    ERROR DB 10, 13, "Wrong Input, Press any key to continue... : $"
    M1 DB 10, 13, "Input Operand 1 : $"
    M2 DB 10, 13, "Input Operand 2 : $"
    M3 DB 10, 13, "The result is : $"
    
.CODE 
INDEC PROC
         PUSH BX       ; Save the registers used in the procedure
         PUSH CX
         PUSH DX    
         MOV BX, 0     ; Initialize for intermediate result
         MOV CX, 10    ; Initialize 10 as multiplier
INPUT:
         MOV AH, 1     ; For input
         INT 21h
    
         CMP AL, '0'   ; Check to make sure it is char digit
         JB NEXT
         CMP AL, '9'
         JA NEXT
    
         SUB AL, '0'   ; Convert from char digit to digit
         XOR AH, AH    ; To prevent garbage value
         PUSH AX       ; Push digit into stack
         
         MOV AX, BX    ; Place Intermediate value into AX in order to multiply
         MUL CX        ; Multiply AX with CX
         
         POP BX        ; Pop digit from stack
         ADD BX, AX    ; Add IR (Intermediate Result) to the digit
         JMP INPUT
NEXT:    
         MOV AX, BX
         POP DX
         POP CX
         POP BX
         RET
INDEC ENDP 


OUTDEC PROC
         MOV CX, 0
         MOV BX, 10
OUT1:    
         MOV DX, 0
         DIV BX
         PUSH DX
         INC CX
         CMP AX, 0
         JE OUT2
         JMP OUT1
         
OUT2:    
         POP DX
         ADD DX, 30h
         MOV AH, 2
         INT 21h
         LOOP OUT2
         
         RET
            
OUTDEC ENDP
 
 
DisplayMenu PROC    
    MOV DX, offset MENU                ;Display the Menu
    MOV AH, 9
    INT 21h
    
    RET 
DisplayMenu ENDP 
  
                
InputOperands PROC
    MOV DX, OFFSET M1
    MOV AH, 9
    INT 21h
    CALL INDEC            ; Indec returns the deciamal value in AX
    MOV OP1, AX               
    
    MOV DX, OFFSET M2
    MOV AH, 9
    INT 21h
    CALL INDEC            ; Indec returns the deciamal value in AX
    MOV OP2, AX
    RET
InputOperands ENDP
                  

DisplayResult PROC 
    MOV DX, OFFSET M3
    MOV AH, 9
    INT 21h
    MOV AX, RESULT        ; Since outdec returns the deciamal value in AX
    CALL OUTDEC
    RET
DisplayResult ENDP                  
 
                 
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
;-----------------------------------------------------------------------------------------------
AGAIN:
    CALL DisplayMenu   
    MOV AH,1                           ;Input Choice          
    INT 21H
    
    CMP AL, '1'
    JE PLUS
    
    CMP AL, '2'
    JE MINUS
    
    CMP AL, '3'
    JE MULTIPLY
    
    CMP AL, '4'
    JE DIVQ
    
    CMP AL, '5'
    JE DIVR
    
    CMP AL, '6'
    JE EXIT
    
    MOV AH, 9
    LEA DX, ERROR
    INT 21h
    
    MOV AH, 1
    INT 21h
    JMP AGAIN 
    
    
PLUS:
     CALL InputOperands
     MOV AX, OP1
     ADD AX, OP2
     MOV RESULT, AX
     CALL DisplayResult
     JMP AGAIN
MINUS:
     CALL InputOperands
     MOV AX, OP1
     SUB AX, OP2
     MOV RESULT, AX
     CALL DisplayResult
     JMP AGAIN
MULTIPLY:     
     CALL InputOperands
     MOV AX, OP1    ; Place the multiplicand in AX
     MUL OP2        ; Multiply with Op2 that is word multiplication (DX:AX = AX * Op2)
     MOV RESULT, AX ; Store AX in Result
     CALL DisplayResult 
     JMP AGAIN   
DIVQ: 
     CALL InputOperands
     MOV AX, OP1    ; Place the divident in DX:AX for word division
     MOV DX, 0
     DIV OP2
     MOV RESULT, AX ; Place the quotient in Result, Q = (DX:AX)/OP2
     CALL DisplayResult
     JMP AGAIN
DIVR: 
     CALL InputOperands
     MOV AX, OP1    ; Place the divident in DX:AX for word division
     MOV DX, 0
     DIV OP2
     MOV RESULT, DX ; Place the remainder in Result, R = (DX:AX)/OP2
     CALL DisplayResult
     JMP AGAIN


;-----------------------------------------------------------------------------------------------
EXIT:    MOV AH, 4CH
         INT 21h
MAIN ENDP
END MAIN   
     
