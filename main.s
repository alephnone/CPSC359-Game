.section    .init
.globl     _start

_start:
    b       main
    
.section .text

main:
    mov     sp, #0x8000
	bl		EnableJTAG
	
	bl		initfunctions
	bl		readSNESInput

	
haltLoop$:
	b		haltLoop$




.section .data


