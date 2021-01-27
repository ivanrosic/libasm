; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/27 10:27:28 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/27 13:22:25 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global _ft_read
extern ___error

_ft_read:
	mov rax, 0x2000003
	syscall
	jc _error_read
	ret

_error_read:
	mov rdi, rax
	push rdi
	call ___error
	pop rdi
	mov [rax], rdi
	mov rax, -1
	ret
