
/* Test that a button is pressed
 * Inputs:
 * r0 - Button Register read from SNES
 * 
 * Outputs:
 * r0 - where the button is pressed or not (1 is a yes, 0 is a no)
 */
.globl LPress
.globl UPress
.globl DPress
.globl RPress

	
LPress:
	ldr		r1,	=0xFFBF		// mask for bit 7
	teq		r0,	r1			// test if left was pressed
	moveq	r0,	#1			// is yes, return true
	
RPress:
	ldr		r1,	=0xFF7F		// mask for bit 8
	teq		r7,	r1			// test if left was pressed
	moveq	r0,	#1			// is yes, return true

UPress:
	ldr		r1,	=0xFFEF		// mask for bit 6
	teq		r0,	r1			// test if left was pressed
	moveq	r0,	#1			// is yes, return true
	
DPress:
	ldr		r1,	=0xFFDF		// mask for bit 5
	teq		r0,	r1			// test if left was pressed
	moveq	r0,	#1			// is yes, return true
