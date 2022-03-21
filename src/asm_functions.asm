section .data
	extern sc_a	
	extern sc_b
	extern sc_c
	extern sc_num
	extern sc_denom

	extern uc_a
	extern uc_b
	extern uc_c
	extern uc_num
	extern uc_denom

	extern si_a
	extern si_b
	extern si_c
	extern si_num
	extern si_denom

	extern ui_a
	extern ui_b
	extern ui_c
	extern ui_num
	extern ui_denom

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
	xor eax, eax
	xor ebx, ebx
	mov al, [sc_b]		; al <- sc_b
	neg al			; al <- -sc_b
	add al, 55		; al <- 55 - sc_b
	add al, [sc_a]		; al <- 55 - sc_b + sc_a
	mov [sc_num], al 	; sc_num <- 55 - sc_b + sc_a
	mov bl, [sc_c]		; bl <- sc_c
	mov al, -88		; al <- -88
	cbw			 
	idiv bl			; al <- -88 / sc_c
	inc al			; al <- -88 / sc_c + 1
	mov [sc_denom], al	; sc_denom <- -88 / sc_c + 1
	mov al, [sc_num]	; al <- 55 - sc_b + sc_a
	mov bl, [sc_denom]	; bl <- -88 / sc_c + 1
	cbw
	idiv bl			; al <- (55 - sc_b + sc_a) / (-88 / sc_c + 1)
	mov [scr], al		; scr <- (55 - sc_b + sc_a) / (-88 / sc_c + 1)
ret
asm_calculate_result_unsigned_char:
	xor eax, eax
	xor ebx, ebx
	mov al, [uc_b]		; al <- uc_b
	neg al			; al <- -uc_b
	add al, 55		; al <- 55 - uc_b
	add al, [uc_a]		; al <- 55 - uc_b + uc_a
	mov [uc_num], al 	; uc_num <- 55 - uc_b + uc_a
	mov bl, [uc_c]		; bl <- uc_c
	mov al, -88		; al <- -88
	cbw			 
	idiv bl			; al <- -88 / uc_c
	inc al			; al <- -88 / uc_c + 1
	mov [uc_denom], al	; uc_denom <- -88 / uc_c + 1
	mov al, [uc_num]	; al <- 55 - uc_b + uc_a
	mov bl, [uc_denom]	; bl <- -88 / uc_c + 1
	cbw
	idiv bl			; al <- (55 - uc_b + uc_a) / (-88 / uc_c + 1)
	mov [ucr], al		; ucr <- (55 - uc_b + uc_a) / (-88 / uc_c + 1)
ret
asm_calculate_result_signed_int:
	xor eax, eax
	xor ebx, ebx
	mov ax, [si_b]		; ax <- si_b
	neg ax			; ax <- -si_b
	add ax, 55		; ax <- 55 - si_b
	add ax, [si_a]		; ax <- 55 - si_b + si_a
	mov [si_num], ax 	; si_num <- 55 - si_b + si_a
	mov bx, [si_c]		; bx <- si_c
	mov ax, -88		; ax <- -88
	cwd			 
	idiv bx			; ax <- -88 / si_c
	inc ax			; ax <- -88 / si_c + 1
	mov [si_denom], ax	; si_denom <- -88 / si_c + 1
	mov ax, [si_num]	; ax <- 55 - si_b + si_a
	mov bx, [si_denom]	; bx <- -88 / si_c + 1
	cwd
	idiv bx			; ax <- (55 - si_b + si_a) / (-88 / si_c + 1)
	mov [sir], ax		; sir <- (55 - si_b + si_a) / (-88 / si_c + 1)
ret
asm_calculate_result_unsigned_int:
	xor eax, eax
	xor ebx, ebx
	mov ax, [ui_b]		; ax <- ui_b
	neg ax			; ax <- -ui_b
	add ax, 55		; ax <- 55 - ui_b
	add ax, [ui_a]		; ax <- 55 - ui_b + ui_a
	mov [ui_num], ax 	; ui_num <- 55 - ui_b + ui_a
	mov bx, [ui_c]		; bx <- ui_c
	mov ax, -88		; ax <- -88
	cwd			 
	idiv bx			; ax <- -88 / ui_c
	inc ax			; ax <- -88 / ui_c + 1
	mov [ui_denom], ax	; ui_denom <- -88 / ui_c + 1
	mov ax, [ui_num]	; ax <- 55 - ui_b + ui_a
	mov bx, [ui_denom]	; bx <- -88 / ui_c + 1
	cwd
	idiv bx			; ax <- (55 - ui_b + ui_a) / (-88 / ui_c + 1)
	mov [uir], ax		; uir <- (55 - ui_b + ui_a) / (-88 / ui_c + 1)

ret
