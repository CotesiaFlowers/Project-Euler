format PE console
include "win32ax.inc"

  start:
        mov ecx, 999 ; counter
  .loop:
        mov ebx, 3
        xor edx, edx ; reset
        mov eax, ecx
        div ebx

        xor edx, 0 ; check remainder
        jz start.acc

        mov ebx, 5
        xor edx, edx
        mov eax, ecx
        div ebx

        xor edx, 0
        jz start.acc

        jmp start.skip

  .acc:
        add [sum], ecx

  .skip:
        dec ecx
        jnz start.loop

        ; print sum using printf function of c
        cinvoke printf, formatstring, [sum]
        invoke  ExitProcess, 0

        formatstring db "%d", 13, 10, 0
        sum dd 0

section '.idata' import data readable

        library msvcrt, 'msvcrt.dll',\
                kernel32, 'kernel32.dll'

        import msvcrt, printf, 'printf'
        import kernel32, ExitProcess, 'ExitProcess'
