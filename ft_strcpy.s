; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/23 14:27:27 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/23 16:30:05 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global _ft_strcpy

_ft_strcpy:
		mov rcx, 0				;set rx a 0

loop:
		cmp byte[rsi, rcx], 0
		jz return						;parcourt la chaine
		mov r8, [rsi, rcx]
		mov [rdi, rcx], r8
		inc rcx
		jmp loop

return:
		mov byte[rdi, rcx], 0			; pas oublier de mettre un 0 a la fin
		mov rax, rdi
		ret
