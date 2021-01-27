; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/24 14:31:40 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/27 16:29:31 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;section .text

;global _ft_write
;extern	___error


;_ft_write:
;		mov rax, 0x2000004
;		syscall
;		cmp rax, 0
;		jl ft_error
;		ret	

;ft_error:
;		neg rax
;		mov rdi, rax
;		call ___error
;		mov [rax], rdi
;		mov rax, -1
;		ret

section .text
;    extern ___error
;    global _ft_write

;_ft_write:
;    mov     rax, 0x2000004
;    syscall                     
;    jc      error                 ; if (rax < 0) error
;    jmp     end                 

;error:
;    push    rax
;    call    ___error               ; rax = errno memory address
;    pop     qword[rax]             ; *(errno memory address) = errno
;    mov     rax, -1             
;    jmp     end                 

;end:
;    ret                            ; return (rax);
;;
global    _ft_write
extern    ___error

_ft_write:                              ; rdi = fd | rsi = buf | rdx = bytes a lire
            mov    rax, 0x2000004       ; appelle de fonction | ret dans rax
            syscall
            jc    _error_write          ; error carry flags | rax = errno
            ret
_error_write:
            mov    rdi, rax             ; tmp pour errno
            push    rdi
            call    ___error            ; recup adress errno
            pop    rdi
            mov    [rax], rdi           ; errno dans pointeur errno (valeur de retour de ___error)
            mov    rax, -1              ; retourner -1 pour erreur
            ret
