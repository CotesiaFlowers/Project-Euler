format PE console
include "win32ax.inc"

  start:
        mov eax, 1
        mov ebx, 2
  .loop:
        test ebx, 1
        jnz start.skip ; skip if odd
        add [sum], ebx
  .skip:
        mov ecx, ebx ; save

        add ebx, eax
        cmp ebx, 4000000
        jg start.print

        mov eax, ecx
        jmp start.loop
  .print:
        cinvoke printf, formatstring, [sum]
        invoke ExitProcess, 0

        formatstring db "%d", 13, 10, 0
        sum dd 0

section '.idata' import data readable

        library msvcrt, 'msvcrt.dll',\
                kernel32, 'kernel32.dll'

        import msvcrt, printf, 'printf'
        import kernel32, ExitProcess, 'ExitProcess'
