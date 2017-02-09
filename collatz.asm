;Bearbeiter: Björn Oke Maas, Mihai Renea
;Tutorium:   Jonas Cleve, Do. 14 Uhr

global collatz

section .text

collatz:
	mov rax, -1				; do-while-Schleife, also
							; Zaehler ab -1
	
_loop:
	inc rax					; Zaehler +1
	lea rsi, [rdi*2+rdi+1]	; rsi = rdi*3+1
	shr rdi, 1				; rdi = rdi/2
	
	cmovc rdi, rsi			; Ergebnis aus rsi wird genommen
							; falls CF=1, weil dann rdi ungerade war
	jnz _loop				; _loop falls ZF=0, weil dann rdi!=1 war
	ret
	
	
