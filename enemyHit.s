

// ***************************************** //

.globl enemy09Hit  // **
enemy09Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn2			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX09:

	cmp r1, r2
	bgt endCheck09				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX09:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX09

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY09

	add r0, #1
	b checkBulletX09

endcheckBulletX09:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX09


checkY09:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn2			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY09:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck09


checkBulletY09:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY09

	cmp r7, r8
	bleq reduceSize09					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck09

	add r7, #1
	b checkBulletY09
	

endcheckBulletY09:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY09





endCheck09:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize09
reduceSize09:
	
	push {r4, r5, r6, r7, r8, lr}
	ldr r4, =pawn2
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield09


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce09

deleteShield09:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce09:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy10Hit  // **
enemy10Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn3			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX10:

	cmp r1, r2
	bgt endCheck10				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX10:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX10

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY10

	add r0, #1
	b checkBulletX10

endcheckBulletX10:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX10


checkY10:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn3			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY10:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck10


checkBulletY10:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY10

	cmp r7, r8
	bleq reduceSize10					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck10

	add r7, #1
	b checkBulletY10
	

endcheckBulletY10:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY10





endCheck10:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize10
reduceSize10:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn3
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield10


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce10

deleteShield10:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce10:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy11Hit  // **
enemy11Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn4			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX11:

	cmp r1, r2
	bgt endCheck11				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX11:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX11

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY11

	add r0, #1
	b checkBulletX11

endcheckBulletX11:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX11


checkY11:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn4		//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY11:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck11


checkBulletY11:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY11

	cmp r7, r8
	bleq reduceSize11					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck11

	add r7, #1
	b checkBulletY11
	

endcheckBulletY11:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY11





endCheck11:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize11
reduceSize11:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn4
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield11


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce11

deleteShield11:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce11:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy12Hit  // **
enemy12Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn5			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX12:

	cmp r1, r2
	bgt endCheck12				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX12:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX12

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY12

	add r0, #1
	b checkBulletX12

endcheckBulletX12:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX12


checkY12:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn5			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY12:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck12


checkBulletY12:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY12

	cmp r7, r8
	bleq reduceSize12					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck12

	add r7, #1
	b checkBulletY12
	

endcheckBulletY12:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY12





endCheck12:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize12
reduceSize12:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn5
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield12


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce12

deleteShield12:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce12:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy13Hit  // **
enemy13Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn6			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX13:

	cmp r1, r2
	bgt endCheck13				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX13:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX13

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY13

	add r0, #1
	b checkBulletX13

endcheckBulletX13:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX13


checkY13:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn6			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY13:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck13


checkBulletY13:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY13

	cmp r7, r8
	bleq reduceSize13					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck13

	add r7, #1
	b checkBulletY13
	

endcheckBulletY13:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY13





endCheck13:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize13
reduceSize13:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn6
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield13


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce13

deleteShield13:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce13:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy14Hit  // **
enemy14Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn7			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX14:

	cmp r1, r2
	bgt endCheck14				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX14:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX14

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY14

	add r0, #1
	b checkBulletX14

endcheckBulletX14:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX14


checkY14:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn7			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY14:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck14


checkBulletY14:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY14

	cmp r7, r8
	bleq reduceSize14					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck14

	add r7, #1
	b checkBulletY14
	

endcheckBulletY14:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY14





endCheck14:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize14
reduceSize14:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn7
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield14


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce14

deleteShield14:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce14:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy15Hit  // **
enemy15Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn8			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX15:

	cmp r1, r2
	bgt endCheck15				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX15:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX15

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY15

	add r0, #1
	b checkBulletX15

endcheckBulletX15:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX15


checkY15:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn8			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY15:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck15


checkBulletY15:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY15

	cmp r7, r8
	bleq reduceSize15					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck15

	add r7, #1
	b checkBulletY15
	

endcheckBulletY15:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY15





endCheck15:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize15
reduceSize15:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn8
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield15


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce15

deleteShield15:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce15:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy16Hit  // **
enemy16Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn9			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX16:

	cmp r1, r2
	bgt endCheck16				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX16:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX16

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY16

	add r0, #1
	b checkBulletX16

endcheckBulletX16:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX16


checkY16:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn9			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY16:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck16


checkBulletY16:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY16

	cmp r7, r8
	bleq reduceSize16					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck16

	add r7, #1
	b checkBulletY16
	

endcheckBulletY16:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY16





endCheck16:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize16
reduceSize16:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn9
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield16


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce16

deleteShield16:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce16:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy17Hit  // **
enemy17Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn10			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX17:

	cmp r1, r2
	bgt endCheck17				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX17:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX17

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY17

	add r0, #1
	b checkBulletX17

endcheckBulletX17:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX17


checkY17:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn10			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY17:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck17


checkBulletY17:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY17

	cmp r7, r8
	bleq reduceSize17					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck17

	add r7, #1
	b checkBulletY17
	

endcheckBulletY17:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY17





endCheck17:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}





.globl reduceSize17
reduceSize17:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn10
	ldr r5, [r4,#12]	// r5 = shield1's width
	sub r6, r5, #80
	mov r7, #0x0000
	ldr r8, [r4,#8]  // store old colour
	str r7, [r4,#8]  // load black in
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (black)

	cmp r6, #11
	ble deleteShield17


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce17

deleteShield17:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce17:	



	pop {r4, r5, r6, r7, r8, pc} // **




