org 100h

mov si, msg ; load string address into si
cld ; clear this place to be sure that there is nothing on it

print_char:
    lodsb ; load next char from string into al
    test al, al ; check if al is 0
    jz exit ; if al is 0 then exit
    mov ah, 0Eh ; set ah to 0Eh
    int 10h ; call interrupt 10h
    jmp print_char ; as long as al is not 0 jump to print_char

exit:
    mov ax, 4C00h ; set ax to 4C00h
    int 21h ; call interrupt 21h

section .data
msg db 'Hello World' , 0 ; string to print