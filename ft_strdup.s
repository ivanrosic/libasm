; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/27 13:29:56 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/27 16:44:09 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy

_ft_strdup:
		call _ft_strlen
		push rdi
		inc rax
		mov rdi, rax
		call _malloc
		mov rdi, rax
		pop rsi
		call _ft_strcpy
		ret
