	
/* Draws two shield objects
 * Args:
 * none
 * Return:
 * none
 */
.globl drawShields
drawShields:
	push {lr}
	bl	drawShield1
	bl	drawShield2
	pop {pc}

/* Draws 1st shield 
 * Args:
 * none
 * Return:
 * none
 */
drawShield1:
	push {r4,lr}
	ldr 	r4,	=shield1
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield
	pop {r4,pc}

/* Draws 2nd shield
 * Args:
 * none
 * Return:
 * none
 */
drawShield2:
	push {r4,lr}
	ldr 	r4,	=shield2
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield
	pop {r4,pc}



.globl shield1Hit
shield1Hit:
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =shield1			//r5 = shield1 variables

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX:

	cmp r1, r2
	bgt endCheck				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY

	add r0, #1
	b checkBulletX

endcheckBulletX:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX


checkY:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =shield1			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck


checkBulletY:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY

	cmp r7, r8
	bleq reduceSize1					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck

	add r7, #1
	b checkBulletY
	

endcheckBulletY:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY





endCheck:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize1
reduceSize1:
	
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, =shield1
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #10
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield1


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce1

deleteShield1:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce1:	



	pop {r4, r5, r6, r7, r8, pc}









.globl shield2Hit
shield2Hit:
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =shield2			//r5 = shield2 variables

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield2's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX2:

	cmp r1, r2
	bgt endCheck2				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX2:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX2

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY2

	add r0, #1
	b checkBulletX2

endcheckBulletX2:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX2


checkY2:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =shield2			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY2:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck2


checkBulletY2:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY2

	cmp r7, r8
	bleq reduceSize2					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck2

	add r7, #1
	b checkBulletY2
	

endcheckBulletY2:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY2





endCheck2:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize2
reduceSize2:
	
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, =shield2
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #10
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield2


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce2

deleteShield2:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce2:	


	pop {r4, r5, r6, r7, r8, pc}


.section .data
.align 4

/* Data structure for the shields */
.globl shield1
shield1:
	.int	350				// x co-ord
	.int	350				// y co-ord
	.int	0xc618			// color for shield1
	.int	65				// width of shield1

.globl shield1
shield2:
	.int	650				// x co-ord
	.int	350				// y co-ord
	.int	0xc618			// color for shield2
	.int	65				// width of shield2

	

	

