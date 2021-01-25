; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ivarosic <ivarosic@student.42lyon.f>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/24 14:31:40 by ivarosic          #+#    #+#              ;
;    Updated: 2021/01/25 17:08:13 by ivarosic         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text

global _ft_write

_error:
		mov rax, -1
		ret

_ft_write:
		mov rax, 0x2000004
		syscall
		cmp rdx, 0
		jne _error
		ret
