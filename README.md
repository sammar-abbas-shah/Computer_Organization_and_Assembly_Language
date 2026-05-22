# 🖥️ Computer Organization & Assembly Language (COAL)

> x86 Assembly Language projects written in 8086/MASM for the COAL course — featuring a menu-driven calculator and a multi-subject quiz system.

---

## 📁 Repository Structure

```
Computer_Organization_and_Assembly_Language/
│
├── Calculator10.asm       # Menu-driven arithmetic calculator
├── Quiz_System.asm        # Multi-degree, multi-subject MCQ quiz system
└── Sample Output/         # Screenshots of program output
```

---

## 📌 Projects

### 1. 🧮 Calculator (`Calculator10.asm`)

A menu-driven calculator that performs arithmetic operations on two unsigned integers using 8086 Assembly.

**Features:**
- Addition
- Subtraction
- Multiplication
- Division — Quotient
- Division — Remainder / Modulo
- Input validation with error handling
- Loops back to main menu after each operation

**Key Concepts Used:**
- `INDEC` procedure — reads a decimal number from keyboard input (character-by-character) and converts it to a binary integer
- `OUTDEC` procedure — converts a binary result back to decimal and displays it
- `MUL` / `DIV` instructions for word-level arithmetic
- DOS interrupt `INT 21h` for I/O
- Modular procedure design with stack-based register preservation

---

### 2. 📝 Quiz System (`Quiz_System.asm`)

A comprehensive MCQ-based quiz application that supports multiple degrees and subjects, implemented entirely in 8086 Assembly.

**Supported Degrees & Subjects:**

| Degree | Subjects |
|--------|----------|
| BSAI   | COAL, DSA, AI |
| BSIT   | Networking, Web Development, Security |
| BSCS   | COAL, DSA, PAI (Python & AI) |

**Features:**
- Main menu → Degree selection → Subject selection → Quiz
- 5 MCQ questions per subject (mix of Easy and Hard)
- Questions shuffled randomly using a Fisher-Yates shuffle with a Linear Congruential Generator (LCG) seeded by system time
- Score displayed out of 5 at the end
- Converts lowercase input to uppercase automatically
- Returns to main menu after viewing results

**Key Concepts Used:**
- Pointer arrays (`dw offset ...`) for dynamic question/answer lookup
- Fisher-Yates shuffle algorithm in Assembly
- LCG-based pseudo-random number generation using DOS time (`INT 21h / AH=2Ch`)
- Modular procedure design (`subject_exam`, `shuffle_questions`, `rand`, `printStr`, `getChar`, `newline`)
- DOS `INT 21h` for all I/O

---

## 🛠️ Tools & Requirements

| Tool | Details |
|------|---------|
| **Assembler** | MASM (Microsoft Macro Assembler) or compatible (e.g., TASM) |
| **Emulator** | DOSBox (recommended for running 16-bit DOS programs) |
| **Architecture** | x86 16-bit (8086) |
| **OS Target** | MS-DOS / DOSBox environment |

---

## 🚀 How to Run

1. Install [DOSBox](https://www.dosbox.com/) on your system.
2. Mount your project folder inside DOSBox:
   ```
   mount c C:\path\to\your\project
   C:
   ```
3. Assemble and link the `.asm` file (using MASM):
   ```
   masm Calculator10.asm
   link Calculator10.obj
   Calculator10.exe
   ```
   Or for the Quiz System:
   ```
   masm Quiz_System.asm
   link Quiz_System.obj
   Quiz_System.exe
   ```
4. Run the executable and follow the on-screen menu.

> **Tip:** Make sure MASM (`masm.exe`) and `link.exe` are accessible in your DOSBox path.

---

## 📸 Sample Output

Sample output screenshots are available in the [`Sample Output/`](./Sample%20Output/) folder.

---

## 👩‍💻 Author

**Sammar Abbas Shah**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/sammar-abbas-372359289)
[![Email](https://img.shields.io/badge/Email-sammarabbas0619@gmail.com-red?logo=gmail)](mailto:sammarabbas0619@gmail.com)

---

## 📄 License

This project is for educational purposes. Feel free to use it as a reference for your own COAL coursework.
