.globl initfunctions

initfunctions: 
push {lr}
/*	SET CLOCK (PIN 11) TO OUTPUT */
	ldr		r0, =0x20200004 			// address for GPFSEL1
	ldr		r1, [r0]					// copy GPFSEL1 into r1
	mov		r2, #7 						// mask out 3 bits(b111)
	lsl		r2, #3 						// index of 1st bit for pin11
	bic		r1, r2 						// clear pin11 bits
	mov		r3 , #1 					// output function code
	lsl		r3, #3 						// r3 = 0 001 000
	orr		r1, r3 						// set pin11 function in r1
	str		r1, [r0] 					// write back to GPFSEL1

/*	SET LATCH (PIN 9) TO OUPUT */
	ldr		r0, =0x20200000 			// address for GPFSEL0
	ldr		r1, [r0]					// copy GPFSEL0 into r1
	mov		r2, #7 						// mask out 3 bits(b111)
	lsl		r2, #27						// index of 1st bit for pin9
	bic		r1, r2 						// clear pin9 bits
	mov		r3, #1 						// output function code
	lsl		r3, #27 					// r3 = pin9
	orr		r1, r3 						// set pin9 function in r1
	str		r1, [r0] 					// write back to GPFSEL0
 

/*	SET DATA (PIN 10) TO INPUT*/
	ldr		r0, =0x20200004 			// address for GPFSEL1
	ldr		r1, [r0]					// copy GPFSEL0 into r1
	mov		r2, #7 						// mask out the first 3 bits(b111) for pin 10
	bic		r1, r2 						// clear pin10  bits
	str		r1, [r0] 					// write back to GPFSEL0
	
	pop {lr}
	bx 	lr

.globl readSNESInput
readSNESInput:
	push {lr}


	mov		r1,	#1						// value to write on the clock
	bl		WriteClock					// WRITE CLOCK, #1
	
	mov		r1,	#1						// value to write on the latch
	bl		WriteLatch					// WRITE LATCH, #1 
	
	bl		Wait12						// wait 12 micros

	mov		r1,	#0						// value to write on the latch
	bl		WriteLatch					// WRITE LATCH, #0


/*	START PULSING TO READ FROM SNES */
	mov		r5,	#0
pulseLoop:

	bl		Wait6						// wait 6 micros
	mov		r1,	#0						// value to write
	bl		WriteClock					
	bl		Wait6
	
	bl		ReadData					// read from data line, value returned in r4
	mov		r6,	r4, lsl r5				// store r4 shifted i times into r4
	orr		r7,	r6						// add r4 to the button register (r0)
	
	mov		r1,	#1
	bl		WriteClock
	
	add		r5,	#1						// increment i
	cmp		r5,	#16 					// read 16 buttons
	bne		pulseLoop
	
	pop {lr}
	bx 	lr

/* 	WAITING (12 microseconds) */
Wait12:
	push	{r4-r7, lr}

	ldr		r0,=0x20003004 				// address of CLO
	ldr		r1, [r0] 					// read CLO	
	add 	r1, #12 					// add 12 micros
	waitLoop1:
			ldr	r2, [r0]
			cmp	r1, r2 					// stop when CLO = r1
			bhi	waitLoop1
			
	pop 	{r4-r7, lr}
	mov		pc,	lr
			
/* 	WAITING (6 microseconds) */
Wait6:
	push	{r4-r7, lr}

	ldr		r0,=0x20003004 				// address of CLO
	ldr		r1, [r0] 					// read CLO	
	add 	r1, #6 						// add 6 micros
	waitLoop:
			ldr	r2, [r0]
			cmp	r1, r2 					// stop when CLO = r1
			bhi	waitLoop
			
	pop		{r4-r7, lr}
	mov		pc,	lr
					
WriteClock:
	push	{r4-r7, lr}

	mov		r0,	#11						// pin#11 = CLOCK line
	ldr		r2, =0x20200000 			// base GPIO reg
	mov		r3,	#1	
	lsl		r3,	r0 						// align bit for pin#11 
	teq		r1, #0
	streq	r3,	[r2, #40] 				// GPCLR
	strne	r3,	[r2, #28] 				// GPSET

	
	pop		{r4-r7,lr}
	mov		pc,	lr

WriteLatch:
	push	{r4-r7, lr}
	
	mov		r0,	#9						// pin#9 = LATCH line
	ldr		r2, =0x20200000 			// base GPIO reg
	mov		r3,	#1	
	lsl		r3,	r0 						// align bit for pin#9
	teq		r1, #0
	streq	r3,	[r2, #40] 				// GPCLR
	strne	r3,	[r2, #28] 				// GPSET
	
	pop		{r4-r7, lr}
	mov		pc,	lr
	
ReadData:
	push	{r5-r7, lr}
	
	ldr 	r0, =0x20200034
	ldr		r1, [r0] 					// Level Register 1 Address
	mov		r3, #1
	lsl		r3, #10						// align pin10 bit
	and 	r1, r3 						// mask everything else
	tst		r1, r3
	moveq	r4, #0 						// return 0
	movne	r4, #1 						// return 1	

	pop		{r5-r7, lr}
	mov		pc,	lr


	
