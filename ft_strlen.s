section .text

global _ft_strlen

_ft_strlen:
		mov rcx, 0						;set rcx a 0

loop:
		cmp byte[rdi, rcx], 0				;comp str[rcx] = '\0' et set ZF(res du dernier resultat)
		jz return							;si ZF = 1 return
		inc rcx								;increment rcx 
		jmp loop							;loop

return:
		mov rax, rcx						;rax(valeur de retour) = rcx(index de ftstrlen)
		ret									;return rax
