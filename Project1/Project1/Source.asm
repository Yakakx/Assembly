INCLUDE Irvine32.inc

.data
	source BYTE "This is the source string",0
	target BYTE SIZEOF source DUP(0)

.code
main PROC
	mov esi, OFFSET source
	mov ecx, SIZEOF source
	mov edx, OFFSET target
L1:
	mov al,[esi] 
	mov [edx],al 
	inc esi
	inc edx
	loop L1
	
	exit
	
	
main endp
end main