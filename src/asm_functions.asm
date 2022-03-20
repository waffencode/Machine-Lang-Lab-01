section .data
	extern sc_a	
	extern sc_b
	extern sc_c
	
	extern uc_a
	extern uc_b
	extern uc_c

	extern si_a
	extern si_b
	extern si_c

	extern ui_a
	extern ui_b
	extern ui_c

	extern scr
	extern ucr
	extern sir
	extern uir
 
	global asm_calculate_result_signed_char
	global asm_calculate_result_unsigned_char
	global asm_calculate_result_signed_int
	global asm_calculate_result_unsigned_int

section .text
asm_calculate_result_signed_char:
	mov al, 55
	mov bl, [sc_a]
	mov cl, [sc_b]
	mov dl, [sc_c]
	sub al, cl 		; 55 - b
	add al, bl 		; 55 - b + a
	mov [scr], al 	; result = 55 - b + a
	mov bl, dl 		; c
	mov al, -88	
	cbw
	idiv bl 		; -88 / c
	xor cl, cl
	xor dl, dl
	inc al 		; -88 / c + 1
	mov bl, al 		; ebx = -88 / c + 1
	cbw
	mov al, [scr] 	; eax = 55 - b + a 
	cbw
	idiv bl
	xor cl, cl
	xor dl, dl	
	mov [scr], al	; result = (55 - b + a) / (-88 / c + 1)
ret
asm_calculate_result_unsigned_char:
	mov al, 55
	mov bl, [uc_a]
	mov cl, [uc_b]
	mov dl, [uc_c]
	sub al, cl 		; 55 - b
	add al, bl 		; 55 - b + a
	mov [ucr], al 		; result = 55 - b + a
	mov bl, dl 		; c
	mov al, -88	
	cbw
	idiv bl 		; -88 / c
	xor cl, cl
	xor dl, dl
	inc al 		; -88 / c + 1
	mov bl, al 		; ebx = -88 / c + 1
	cbw
	mov al, [ucr] 	; eax = 55 - b + a 
	cbw
	idiv bl
	xor cl, cl
	xor dl, dl	
	mov [ucr], al	; result = (55 - b + a) / (-88 / c + 1)
ret
asm_calculate_result_signed_int:
	mov eax, 55
	mov ebx, [si_a]
	mov ecx, [si_b]
	mov edx, [si_c]
	sub eax, ecx 		; 55 - b
	add eax, ebx 		; 55 - b + a
	mov [sir], eax 	; result = 55 - b + a
	mov ebx, edx 		; c
	mov eax, -88	
	cdq
	idiv ebx 		; -88 / c
	xor ecx, ecx
	xor edx, edx
	inc eax 		; -88 / c + 1
	mov ebx, eax 		; ebx = -88 / c + 1
	cdq
	mov eax, [sir] 	; eax = 55 - b + a 
	cdq
	idiv ebx
	xor ecx, ecx
	xor edx, edx	
	mov [sir], eax	; result = (55 - b + a) / (-88 / c + 1)
ret
asm_calculate_result_unsigned_int:
mov eax, 55
	mov ebx, [ui_a]
	mov ecx, [ui_b]
	mov edx, [ui_c]
	sub eax, ecx 		; 55 - b
	add eax, ebx 		; 55 - b + a
	mov [uir], eax 	; result = 55 - b + a
	mov ebx, edx 		; c
	mov eax, -88	
	cdq
	idiv ebx 		; -88 / c
	xor ecx, ecx
	xor edx, edx
	inc eax 		; -88 / c + 1
	mov ebx, eax 		; ebx = -88 / c + 1
	cdq
	mov eax, [uir] 	; eax = 55 - b + a 
	cdq
	idiv ebx
	xor ecx, ecx
	xor edx, edx	
	mov [uir], eax	; result = (55 - b + a) / (-88 / c + 1)
ret
