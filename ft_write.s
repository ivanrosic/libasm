; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/24 14:31:40 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/26 11:50:46 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;section .text
;
;global _ft_write
;extern	__errno_location
	
;_error:
;	;	neg rax
;		mov rdi, rax
;		call __errno_location
;		mov [rax], rdi
;		mov rax, -1
;		ret

;_ft_write:
;		mov rax, 0x2000004
;		syscall
;		cmp rdx, 0
;		jne _error
;		ret
_ft_write:                                  ; rdi = file descriptor, rsi = string, rdx = byte count
            mov         rax, 0x2000004      ; BSD / MacOS calling convention unlike Linux
            syscall
            jc          error               ; error sets carry flag, rax = errno
            ret
error:
            mov         r15, rax            ; save errno
            call        ___error            ; retrieve address to errno
            mov         [rax], r15          ; put errno in return value of __error (pointer to errno)
            mov         rax, -1
            ret
