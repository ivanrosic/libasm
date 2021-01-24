; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/23 15:33:18 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/24 14:29:40 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global _ft_strcmp
extern _printf

_ft_strcmp:
		mov rcx, 0			;set rcx a 0
		mov rax, 0
loop:
		cmp byte[rdi, rcx], 0
		jz return
		cmp byte[rsi, rcx], 0
		jz return
		mov r8, [rdi, rcx]
		cmp [rsi, rcx], r8
		jnz return
		inc rcx
		jmp loop

return:
		movzx rax, byte[rdi, rcx]
		movzx rdx, byte[rsi, rcx]
		sub rax, rdx
		ret
		
