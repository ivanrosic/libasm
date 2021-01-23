global ft_strlen

_ft_strlen:
		xor rcx, rcx						;set rcx a 0
		jmp loop

loop:
		cmp byte[rcx], 0					;comp str[rcx] = '\0' et set ZF(res du dernier resultat)
		jz return							;si ZF = 1 return
		inc rcx								;increment rcx 
		jmp loop							;loop

return:
		mov rax, rcx						;rax(valeur de retour) = rcx(index de ftstrlen)
		ret									;return rax
