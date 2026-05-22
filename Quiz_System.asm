.data
; --- Degree Menu ---
degreeMenu db 13,10,"     ==========DEGREES==========",13,10,"Select Degree:",13,10,"1. BSAI",13,10,"2. BSIT",13,10,"3. BSCS",13,10,"Enter choice: $"
degreeNames db "BSAI$", "BSIT$", "BSCS$"  ; Degree name strings

; --- Subject Menus ---
BSAI_SubjectMenu db 13,10,"     =====BSAI SUBJECTS=====",13,10,"1. COAL",13,10,"2. DSA",13,10,"3. AI",13,10,"Enter choice: $"
BSIT_SubjectMenu db 13,10,"     =====BSIT SUBJECTS=====",13,10,"1. Networking",13,10,"2. Web",13,10,"3. Security",13,10,"Enter choice: $"
BSCS_SubjectMenu db 13,10,"     =====BSCS SUBJECTS=====",13,10,"1. COAL",13,10,"2. DSA",13,10,"3. PAI",13,10,"Enter choice: $"

; --- Subject Name Pointers ---
BSAI_Subjects dw offset COAL_Name, offset DSA_Name, offset AI_Name
BSIT_Subjects dw offset NET_Name, offset WEB_Name, offset SEC_Name
BSCS_Subjects dw offset COAL_Name, offset DSA_Name, offset PAI_Name

; --- Subject Names ---
COAL_Name db "COAL$"
DSA_Name  db "DSA$"
PAI_Name  db "PAI$"
AI_Name   db "AI$"
NET_Name  db "Networking$"
WEB_Name  db "Web$"
SEC_Name  db "Security$"

; --- Other Strings ---
mainMenu db 13,10,"      ==========Multiple Choice Quiz==========",13,10,"1. Start Quiz",13,10,"2. Exit",13,10,"Enter your choice: $"
invalidMsg db 13,10,"Invalid choice!$"
examStartMsg db 13,10,"     =====Starting Exam=====$"
resultHeader db 13,10,"      =====Exam Finished!=====",13,10,"$"
degreeMsg db "Degree: $"
subjectMsg db "Subject: $"
scoreMsg db "Score: $"
scoreDisplay db '?','/','5',13,10,"Press any key to return to Main Menu.$"

; --- Question Arrays ---
; COAL Questions
COAL_questions dw offset COAL_Q1, offset COAL_Q2, offset COAL_Q3, offset COAL_Q4, offset COAL_Q5
COAL_answers db 'B','A','A','B','B'

; DSA Questions
DSA_questions dw offset DSA_Q1, offset DSA_Q2, offset DSA_Q3, offset DSA_Q4, offset DSA_Q5
DSA_answers db 'B','C','B','C','B'

; PAI Questions
PAI_questions dw offset PAI_Q1, offset PAI_Q2, offset PAI_Q3, offset PAI_Q4, offset PAI_Q5
PAI_answers db 'B','C','C','A','D'

; AI Questions
AI_questions dw offset AI_Q1, offset AI_Q2, offset AI_Q3, offset AI_Q4, offset AI_Q5
AI_answers db 'B','B','A','C','D'

; Networking Questions
NET_questions dw offset NET_Q1, offset NET_Q2, offset NET_Q3, offset NET_Q4, offset NET_Q5
NET_answers db 'A','C','B','D','A'

; Web Questions
WEB_questions dw offset WEB_Q1, offset WEB_Q2, offset WEB_Q3, offset WEB_Q4, offset WEB_Q5
WEB_answers db 'B','A','D','C','B'

; Security Questions
SEC_questions dw offset SEC_Q1, offset SEC_Q2, offset SEC_Q3, offset SEC_Q4, offset SEC_Q5
SEC_answers db 'C','D','A','B','C'

; --- Question Texts ---
; COAL
COAL_Q1 db 13,10,"[EASY] Q1. What is the full form of CPU?",13,10,"A. Central Process Unit",13,10,"B. Central Processing Unit",13,10,"C. Computer Power Unit",13,10,"D. Core Power Unit",13,10,"Enter Answer (A-D): $"
COAL_Q2 db 13,10,"[EASY] Q2. Which one is a register?",13,10,"A. AL",13,10,"B. ROM",13,10,"C. USB",13,10,"D. RAM",13,10,"Enter Answer (A-D): $"
COAL_Q3 db 13,10,"[EASY] Q3. What is Assembly Language?",13,10,"A. Low-level",13,10,"B. High-level",13,10,"C. Binary",13,10,"D. Markup",13,10,"Enter Answer (A-D): $"
COAL_Q4 db 13,10,"[HARD] Q4. MOV instruction is used to?",13,10,"A. Add numbers",13,10,"B. Transfer data",13,10,"C. Multiply",13,10,"D. Store files",13,10,"Enter Answer (A-D): $"
COAL_Q5 db 13,10,"[HARD] Q5. 8086 is a?",13,10,"A. Compiler",13,10,"B. Processor",13,10,"C. Hard disk",13,10,"D. Mouse",13,10,"Enter Answer (A-D): $"

; DSA
DSA_Q1 db 13,10,"[EASY] Q1. What is a data structure?",13,10,"A. Tool",13,10,"B. Way to organize data",13,10,"C. Operating System",13,10,"D. Compiler",13,10,"Enter Answer (A-D): $"
DSA_Q2 db 13,10,"[EASY] Q2. A stack uses?",13,10,"A. FIFO",13,10,"B. FILO",13,10,"C. LIFO",13,10,"D. Random",13,10,"Enter Answer (A-D): $"
DSA_Q3 db 13,10,"[EASY] Q3. What is an array?",13,10,"A. Loop",13,10,"B. Collection of variables",13,10,"C. A function",13,10,"D. Register",13,10,"Enter Answer (A-D): $"
DSA_Q4 db 13,10,"[HARD] Q4. Queue inserts from?",13,10,"A. Middle",13,10,"B. Top",13,10,"C. Rear",13,10,"D. Front",13,10,"Enter Answer (A-D): $"
DSA_Q5 db 13,10,"[HARD] Q5. Binary search works on?",13,10,"A. Random data",13,10,"B. Sorted data",13,10,"C. Trees",13,10,"D. None",13,10,"Enter Answer (A-D): $"

; PAI
PAI_Q1 db 13,10,"[EASY] Q1. Python is a?",13,10,"A. Low-level language",13,10,"B. High-level language",13,10,"C. Machine code",13,10,"D. Binary code",13,10,"Enter Answer (A-D): $"
PAI_Q2 db 13,10,"[EASY] Q2. Which symbol is used for comments?",13,10,"A. //",13,10,"B. <!--",13,10,"C. #",13,10,"D. $$",13,10,"Enter Answer (A-D): $"
PAI_Q3 db 13,10,"[EASY] Q3. Which data type stores decimal numbers?",13,10,"A. int",13,10,"B. str",13,10,"C. float",13,10,"D. bool",13,10,"Enter Answer (A-D): $"
PAI_Q4 db 13,10,"[HARD] Q4. Print in Python is written as?",13,10,"A. print()",13,10,"B. Print()",13,10,"C. PRINT()",13,10,"D. echo",13,10,"Enter Answer (A-D): $"
PAI_Q5 db 13,10,"[HARD] Q5. Which library is used for AI?",13,10,"A. random",13,10,"B. os",13,10,"C. numpy",13,10,"D. tensorflow",13,10,"Enter Answer (A-D): $"

; AI (for BSAI)
AI_Q1 db 13,10,"[EASY] Q1. What does AI stand for?",13,10,"A. Automated Input",13,10,"B. Artificial Intelligence",13,10,"C. Algorithmic Inference",13,10,"D. Applied Informatics",13,10,"Enter Answer (A-D): $"
AI_Q2 db 13,10,"[EASY] Q2. Which is NOT an AI application?",13,10,"A. Image recognition",13,10,"B. Spreadsheets",13,10,"C. Chatbots",13,10,"D. Recommendation systems",13,10,"Enter Answer (A-D): $"
AI_Q3 db 13,10,"[EASY] Q3. What is machine learning?",13,10,"A. AI subset where systems learn from data",13,10,"B. Computer hardware",13,10,"C. Network protocol",13,10,"D. Database type",13,10,"Enter Answer (A-D): $"
AI_Q4 db 13,10,"[HARD] Q4. Which algorithm is used for classification?",13,10,"A. K-Means",13,10,"B. Apriori",13,10,"C. Decision Tree",13,10,"D. PageRank",13,10,"Enter Answer (A-D): $"
AI_Q5 db 13,10,"[HARD] Q5. What does NLP stand for?",13,10,"A. Network Layer Protocol",13,10,"B. Natural Language Processing",13,10,"C. Nonlinear Programming",13,10,"D. Neural Learning Process",13,10,"Enter Answer (A-D): $"

; Networking (for BSIT)
NET_Q1 db 13,10,"[EASY] Q1. What does LAN stand for?",13,10,"A. Local Area Network",13,10,"B. Large Access Node",13,10,"C. Logical Address Name",13,10,"D. Linked Application Network",13,10,"Enter Answer (A-D): $"
NET_Q2 db 13,10,"[EASY] Q2. Which device connects networks?",13,10,"A. Hub",13,10,"B. Switch",13,10,"C. Router",13,10,"D. All of these",13,10,"Enter Answer (A-D): $"
NET_Q3 db 13,10,"[EASY] Q3. What is the main internet protocol?",13,10,"A. HTTP",13,10,"B. FTP",13,10,"C. TCP/IP",13,10,"D. SMTP",13,10,"Enter Answer (A-D): $"
NET_Q4 db 13,10,"[HARD] Q4. What does DNS resolve?",13,10,"A. IP to MAC",13,10,"B. Domain to IP",13,10,"C. MAC to IP",13,10,"D. Encryption keys",13,10,"Enter Answer (A-D): $"
NET_Q5 db 13,10,"[HARD] Q5. Which port does HTTPS use?",13,10,"A. 80",13,10,"B. 25",13,10,"C. 443",13,10,"D. 22",13,10,"Enter Answer (A-D): $"

; Web (for BSIT)
WEB_Q1 db 13,10,"[EASY] Q1. What does HTML stand for?",13,10,"A. Hyper Transfer Markup Language",13,10,"B. Hypertext Markup Language",13,10,"C. High-level Text Management Language",13,10,"D. Home Tool Markup Language",13,10,"Enter Answer (A-D): $"
WEB_Q2 db 13,10,"[EASY] Q2. Which is a CSS framework?",13,10,"A. Django",13,10,"B. Bootstrap",13,10,"C. React",13,10,"D. jQuery",13,10,"Enter Answer (A-D): $"
WEB_Q3 db 13,10,"[EASY] Q3. What does API stand for?",13,10,"A. Automated Programming Interface",13,10,"B. Application Protocol Integration",13,10,"C. Application Programming Interface",13,10,"D. Advanced Programming Instruction",13,10,"Enter Answer (A-D): $"
WEB_Q4 db 13,10,"[HARD] Q4. Which method sends data in HTTP?",13,10,"A. GET",13,10,"B. RECEIVE",13,10,"C. POST",13,10,"D. FETCH",13,10,"Enter Answer (A-D): $"
WEB_Q5 db 13,10,"[HARD] Q5. What is a RESTful service?",13,10,"A. Stateful service",13,10,"B. Stateless service using HTTP methods",13,10,"C. Real-time service",13,10,"D. Email service",13,10,"Enter Answer (A-D): $"

; Security (for BSIT)
SEC_Q1 db 13,10,"[EASY] Q1. What is phishing?",13,10,"A. Network scanning",13,10,"B. Password cracking",13,10,"C. Fraudulent information gathering",13,10,"D. Encryption attack",13,10,"Enter Answer (A-D): $"
SEC_Q2 db 13,10,"[EASY] Q2. Which is a symmetric encryption?",13,10,"A. RSA",13,10,"B. AES",13,10,"C. ECC",13,10,"D. Diffie-Hellman",13,10,"Enter Answer (A-D): $"
SEC_Q3 db 13,10,"[EASY] Q3. What does VPN provide?",13,10,"A. Faster internet",13,10,"B. Secure remote access",13,10,"C. Malware protection",13,10,"D. Spam filtering",13,10,"Enter Answer (A-D): $"
SEC_Q4 db 13,10,"[HARD] Q4. What is a zero-day exploit?",13,10,"A. Known vulnerability",13,10,"B. Attack before patch is available",13,10,"C. Password attack",13,10,"D. Denial-of-Service",13,10,"Enter Answer (A-D): $"
SEC_Q5 db 13,10,"[HARD] Q5. Which authenticates users?",13,10,"A. Firewall",13,10,"B. IDS",13,10,"C. Kerberos",13,10,"D. VPN",13,10,"Enter Answer (A-D): $"

; --- Variables ---
shuffle_index db 0,1,2,3,4   ; Array for shuffling questions
user_ans db 5 dup(?)          ; User answers
score db 0                    ; Exam score
current_degree db ?           ; Selected degree index
current_degree_ptr dw ?       ; Pointer to degree name
current_subject_ptr dw ?      ; Pointer to subject name
rand_seed dw 0                ; Random seed

.code
main:
    mov ax, @data
    mov ds, ax

main_menu:
    ; Display main menu
    lea dx, mainMenu
    call printStr
    call getChar
    
    ; Check user choice
    cmp al, '1'
    je degree_select
    cmp al, '2'
    je exit_program
    
    ; Invalid choice
    lea dx, invalidMsg
    call printStr
    jmp main_menu

degree_select:
    ; Display degree menu
    lea dx, degreeMenu
    call printStr
    call getChar
    
    ; Process degree selection
    cmp al, '1'
    je set_degree_BSAI
    cmp al, '2'
    je set_degree_BSIT
    cmp al, '3'
    je set_degree_BSCS
    
    ; Invalid degree choice
    lea dx, invalidMsg
    call printStr
    jmp degree_select

set_degree_BSAI:
    mov current_degree, 0
    lea bx, degreeNames
    mov current_degree_ptr, bx
    jmp subject_menu

set_degree_BSIT:
    mov current_degree, 1
    lea bx, degreeNames + 5
    mov current_degree_ptr, bx
    jmp subject_menu

set_degree_BSCS:
    mov current_degree, 2
    lea bx, degreeNames + 10
    mov current_degree_ptr, bx

subject_menu:
    ; Show appropriate subject menu based on degree
    mov al, current_degree
    cmp al, 0
    je show_BSAI_menu
    cmp al, 1
    je show_BSIT_menu
    
    ; Default to BSCS menu
    lea dx, BSCS_SubjectMenu
    jmp get_subject_choice

show_BSAI_menu:
    lea dx, BSAI_SubjectMenu
    jmp get_subject_choice

show_BSIT_menu:
    lea dx, BSIT_SubjectMenu

get_subject_choice:
    ; Display subject menu and get choice
    call printStr
    call getChar
    
    ; Validate subject choice
    sub al, '1'
    cmp al, 0
    jl invalid_subject
    cmp al, 2
    jg invalid_subject
    
    ; Store subject choice
    mov bl, al
    mov ah, 0
    mov si, ax
    shl si, 1
    
    ; Set subject pointer based on degree
    mov al, current_degree
    cmp al, 0
    je set_BSAI_subject
    cmp al, 1
    je set_BSIT_subject
    
    ; BSCS subjects
    lea bx, BSCS_Subjects
    add bx, si
    mov dx, [bx]
    mov current_subject_ptr, dx
    jmp start_exam

set_BSAI_subject:
    lea bx, BSAI_Subjects
    add bx, si
    mov dx, [bx]
    mov current_subject_ptr, dx
    jmp start_exam

set_BSIT_subject:
    lea bx, BSIT_Subjects
    add bx, si
    mov dx, [bx]
    mov current_subject_ptr, dx
    jmp start_exam

invalid_subject:
    lea dx, invalidMsg
    call printStr
    jmp subject_menu

start_exam:
    ; Shuffle questions before starting exam
    call shuffle_questions
    
    ; Start appropriate exam based on degree
    mov al, current_degree
    cmp al, 0
    je BSAI_exam
    cmp al, 1
    je BSIT_exam
    jmp BSCS_exam

BSAI_exam:
    call subject_exam
    jmp show_result

BSIT_exam:
    call subject_exam
    jmp show_result

BSCS_exam:
    call subject_exam

show_result:
    ; Display exam results
    lea dx, resultHeader
    call printStr
    
    ; Show degree
    lea dx, degreeMsg
    call printStr
    mov dx, current_degree_ptr
    call printStr
    call newline
    
    ; Show subject
    lea dx, subjectMsg
    call printStr
    mov dx, current_subject_ptr
    call printStr
    call newline
    
    ; Show score
    lea dx, scoreMsg
    call printStr
    mov al, score
    add al, '0'
    mov scoreDisplay, al
    lea dx, scoreDisplay
    call printStr
    
    ; Wait for key press to return to main menu
    call getChar
    jmp main_menu

; --- Subject Exam Procedure ---
subject_exam proc
    ; Initialize score
    mov score, 0
    
    ; Display exam start message
    lea dx, examStartMsg
    call printStr
    
    ; Determine which subject exam to take
    mov dx, current_subject_ptr
    cmp dx, offset COAL_Name
    je coal_exam
    cmp dx, offset DSA_Name
    je dsa_exam
    cmp dx, offset PAI_Name
    je pai_exam
    cmp dx, offset AI_Name
    je ai_exam
    cmp dx, offset NET_Name
    je net_exam
    cmp dx, offset WEB_Name
    je web_exam
    cmp dx, offset SEC_Name
    je sec_exam
    ret

coal_exam:
    lea si, COAL_questions
    lea di, COAL_answers
    jmp take_exam

dsa_exam:
    lea si, DSA_questions
    lea di, DSA_answers
    jmp take_exam

pai_exam:
    lea si, PAI_questions
    lea di, PAI_answers
    jmp take_exam

ai_exam:
    lea si, AI_questions
    lea di, AI_answers
    jmp take_exam

net_exam:
    lea si, NET_questions
    lea di, NET_answers
    jmp take_exam

web_exam:
    lea si, WEB_questions
    lea di, WEB_answers
    jmp take_exam

sec_exam:
    lea si, SEC_questions
    lea di, SEC_answers

take_exam:
    ; Display questions in shuffled order
    mov cx, 5
    mov bp, 0
    lea bx, shuffle_index
    
question_loop:
    ; Get question from shuffled index
    mov al, [bx]
    mov ah, 0
    shl ax, 1
    push bx
    mov bx, si
    add bx, ax
    mov dx, [bx]
    pop bx
    
    ; Display question and get answer
    call printStr
    call getChar
    mov user_ans[bp], al
    
    ; Move to next question
    inc bx
    inc bp
    loop question_loop
    
    ; Check answers against correct ones
    mov cx, 5
    mov bp, 0
    lea bx, shuffle_index
    
check_answers:
    ; Get correct answer for current question
    mov al, [bx]
    mov ah, 0
    push bx
    mov bx, di
    add bx, ax
    mov al, [bx]
    pop bx
    
    ; Compare with user's answer
    cmp user_ans[bp], al
    jne skip_increment
    
    ; Increment score if correct
    inc score
    
skip_increment:
    ; Move to next answer
    inc bx
    inc bp
    loop check_answers
    ret
subject_exam endp

; --- Shuffle Questions ---
shuffle_questions proc
    ; Initialize random seed with system time
    mov ah, 2Ch
    int 21h
    mov [rand_seed], dx
    
    ; Prepare for Fisher-Yates shuffle
    mov cx, 4
    lea di, shuffle_index
    
outer_loop:
    push cx
    
    ; Generate random index between 0 and current index
    mov ax, cx
    inc ax
    call rand
    mov si, ax
    
    ; Swap elements at current index and random index
    mov bx, di
    add bx, si
    mov al, [bx]
    mov bx, di
    add bx, cx
    mov ah, [bx]
    mov [bx], al
    mov bx, di
    add bx, si
    mov [bx], ah
    
    pop cx
    loop outer_loop
    ret
shuffle_questions endp

; --- Random Number Generator ---
rand proc
    ; Simple linear congruential generator
    push cx
    push dx
    
    ; Get random seed and multiply
    mov cx, ax
    mov ax, [rand_seed]
    mov dx, 8405h
    mul dx
    inc ax
    mov [rand_seed], ax
    
    ; Return random number in range
    xor dx, dx
    div cx
    mov ax, dx
    
    pop dx
    pop cx
    ret
rand endp

; --- Helper Functions ---
printStr proc
    ; Print string pointed by DX
    mov ah, 09h
    int 21h
    ret
printStr endp

getChar proc
    ; Get character and convert to uppercase
    mov ah, 01h
    int 21h
    cmp al, 'a'
    jb skip_upper
    cmp al, 'z'
    ja skip_upper
    sub al, 20h
skip_upper:
    ret
getChar endp

newline proc
    ; Print newline
    mov ah, 02h
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    ret
newline endp

exit_program:
    ; Exit program
    mov ah, 4ch
    int 21h

end main