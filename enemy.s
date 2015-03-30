
.globl drawEnemy
drawEnemy:
	push {lr}
	bl drawqueen
	bl drawpawn
	bl drawknight
	pop {pc}

/* Draw the queen on screen */
.globl drawqueen
drawqueen:
	push	{r4,lr}
	
	ldr 	r4,	=queen1
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the queen

	ldr 	r4,	=queen2
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the queen
	
	
	pop		{r4, pc}
	

/* Draw the knight on screen */
.globl drawknight
drawknight:
	push	{r4,lr}
	
	ldr 	r4,	=knight1
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the knight

	ldr 	r4,	=knight2
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the knight

	ldr 	r4,	=knight3
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the knight

	ldr 	r4,	=knight4
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the knight

	ldr 	r4,	=knight5
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the knight
	
	pop		{r4, pc}


/* Draw the pawns on screen */
.globl drawpawn
drawpawn:
	push	{r4,lr}
	
	ldr 	r4,	=pawn1
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn2
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn3
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn4
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn5
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn6
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn7
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn8
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn9
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	ldr 	r4,	=pawn10
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	
	pop		{r4, pc}

// **  //




// ** //

.globl moveEnemies
moveEnemies:
	push {r4, r5, r6, lr}
	ldr r4, =enemyMovement
	ldr r5, [r4]
	
	cmp r5, #0
	beq moveLeft

moveRight:

	// **
	ldr r4, =queen1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr 	r4,	=queen1
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =queen2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr 	r4,	=queen2
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =knight1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =knight2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =knight3
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =knight4
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	// **
	ldr r4, =knight5
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn3
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn4
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn5
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn6
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn7
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn8
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn9
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn10
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	add r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **


	ldr		r4, =enemyMovement
	ldr	r5, [r4]
	sub r5, #1
	str r5, [r4]

	b endMovement


moveLeft:

	// **********
	ldr r4, =queen1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =queen2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =knight1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =knight2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =knight3
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =knight4
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **********
	ldr r4, =knight5
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn1
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn2
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn3
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn4
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn5
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn6
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn7
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn8
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn9
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **

	ldr r4, =pawn10
	ldr r5, [r4]
	ldr r6, [r4, #8]
	mov r0, #0x0000
	str r0, [r4, #8]


	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn


	sub r5, #50
	str	r5, [r4]
	str		r6, [r4,#8]

	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the pawn

	// **


	ldr		r4, =enemyMovement
	ldr	r5, [r4]
	add r5, #1
	str r5, [r4]


endMovement:
	pop  {r4, r5, r6, pc}

.section .data
.align 4

/* Data structure for the pawn */
.globl pawn1
.globl pawn2
.globl pawn3
.globl pawn4
.globl pawn5
.globl pawn6
.globl pawn7
.globl pawn8
.globl pawn9
.globl pawn10
.globl knight1
.globl knight2
.globl knight3
.globl knight4
.globl knight5
.globl queen1
.globl queen2
.globl bullet1
.globl bullet2
.globl bullet3
.globl bullet4
.globl bullet5
.globl bullet6
.globl bullet7
.globl bullet8
.globl bullet9
.globl bullet10
.globl enemyMovement

bullet1:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet2:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet3:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet4:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet5:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet6:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

bullet7:
	.int	0
	.int 	0
	.int 	0xf0e5
	.int    10
	.int	0x0000

pawn1:
	.int	0				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn2:
	.int	100				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn3:
	.int	200				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn4:
	.int	300				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn5:
	.int	400				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn6:
	.int	500				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn7:
	.int	600				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn8:
	.int	700				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn9:
	.int	800				// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn

pawn10:
	.int	900			// x co-ord
	.int	250				// y co-ord
	.int	0x7be0 			// color for pawn
	.int	45				// width of pawn
	
/* Data structure for the knight */
knight1:
	.int	0				// x co-ord
	.int	150				// y co-ord
	.int	0x07ff			// color for knight
	.int	34				// width of knight

knight2:
	.int	200				// x co-ord
	.int	150				// y co-ord
	.int	0x07ff			// color for knight
	.int	34				// width of knight

knight3:
	.int	400			// x co-ord
	.int	150				// y co-ord
	.int	0x07ff			// color for knight
	.int	34				// width of knight

knight4:
	.int	600				// x co-ord
	.int	150				// y co-ord
	.int	0x07ff			// color for knight
	.int	34				// width of knight

knight5:
	.int	800				// x co-ord
	.int	150			// y co-ord
	.int	0x07ff			// color for knight
	.int	34				// width of knight
	

/* Data structure for the queen */
queen1:
	.int	300				// x co-ord
	.int	50				// y co-ord
	.int	0xf81f		// color for queen
	.int	25				// width of queen

queen2:
	.int	600				// x co-ord
	.int	50				// y co-ord
	.int	0xf81f			// color for queen
	.int	25				// width of queen

enemyMovement:
	.int	1				// Left = 0, Right = 1




// ***************************************** //

.globl enemy01Hit  // **
enemy01Hit: // **


	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =queen1			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX01:

	cmp r1, r2
	bgt endCheck01				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX01:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX01

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY01

	add r0, #1
	b checkBulletX01

endcheckBulletX01:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX01


checkY01:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =queen1			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY01:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck01


checkBulletY01:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY01

	cmp r7, r8
	bleq reduceSize01					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck01

	add r7, #1
	b checkBulletY01
	

endcheckBulletY01:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY01





endCheck01:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize01
reduceSize01:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreQ
	ldr r4, =queen1
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
	ble deleteShield01


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce01

deleteShield01:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce01:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************************************************************//

// ***************************************** //

.globl enemy02Hit  // **
enemy02Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =queen2			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX02:

	cmp r1, r2
	bgt endCheck02				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX02:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX02

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY02

	add r0, #1
	b checkBulletX02

endcheckBulletX02:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX02


checkY02:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =queen2			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY02:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck02


checkBulletY02:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY02

	cmp r7, r8
	bleq reduceSize02					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck02

	add r7, #1
	b checkBulletY02
	

endcheckBulletY02:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY02





endCheck02:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize02
reduceSize02:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreQ
	ldr r4, =queen2
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
	ble deleteShield02


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce02

deleteShield02:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce02:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy03Hit  // **
enemy03Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight1			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX03:

	cmp r1, r2
	bgt endCheck03				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX03:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX03

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY03

	add r0, #1
	b checkBulletX03

endcheckBulletX03:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX03


checkY03:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight1			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY03:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck03


checkBulletY03:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY03

	cmp r7, r8
	bleq reduceSize03					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck03

	add r7, #1
	b checkBulletY03
	

endcheckBulletY03:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY03





endCheck03:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize03
reduceSize03:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScore1
	ldr r4, =knight1
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
	ble deleteShield03


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce03

deleteShield03:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce03:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy04Hit  // **
enemy04Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight2			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX04:

	cmp r1, r2
	bgt endCheck04				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX04:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX04

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY04

	add r0, #1
	b checkBulletX04

endcheckBulletX04:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX04


checkY04:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight2			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY04:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck04


checkBulletY04:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY04

	cmp r7, r8
	bleq reduceSize04					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck04

	add r7, #1
	b checkBulletY04
	

endcheckBulletY04:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY04





endCheck04:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize04
reduceSize04:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScore1
	ldr r4, =knight2
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
	ble deleteShield04


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce04

deleteShield04:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce04:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy05Hit  // **
enemy05Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight3			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX05:

	cmp r1, r2
	bgt endCheck05				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX05:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX05

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY05

	add r0, #1
	b checkBulletX05

endcheckBulletX05:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX05


checkY05:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight3			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY05:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck05


checkBulletY05:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY05

	cmp r7, r8
	bleq reduceSize05					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck05

	add r7, #1
	b checkBulletY05
	

endcheckBulletY05:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY05





endCheck05:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize05
reduceSize05:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScore1
	ldr r4, =knight3
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
	ble deleteShield05


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce05

deleteShield05:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce05:	



	pop {r4, r5, r6, r7, r8, pc}


// ***************************************** //

.globl enemy06Hit  // **
enemy06Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight4			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX06:

	cmp r1, r2
	bgt endCheck06				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX06:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX06

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY06

	add r0, #1
	b checkBulletX06

endcheckBulletX06:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX06


checkY06:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight4			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY06:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck04


checkBulletY06:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY06

	cmp r7, r8
	bleq reduceSize06					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck06

	add r7, #1
	b checkBulletY06
	

endcheckBulletY06:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY06





endCheck06:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize06
reduceSize06:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScore1
	ldr r4, =knight4
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
	ble deleteShield06


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce06

deleteShield06:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce06:	



	pop {r4, r5, r6, r7, r8, pc}

// ***************************************** //

.globl enemy07Hit  // **
enemy07Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight5			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX07:

	cmp r1, r2
	bgt endCheck07				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX07:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX07

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY07

	add r0, #1
	b checkBulletX07

endcheckBulletX07:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX07


checkY07:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =knight5			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY07:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck07


checkBulletY07:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY07

	cmp r7, r8
	bleq reduceSize07					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck07

	add r7, #1
	b checkBulletY07
	

endcheckBulletY07:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY07





endCheck07:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}




.globl reduceSize07
reduceSize07:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScore1
	ldr r4, =knight5
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
	ble deleteShield07


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce07

deleteShield07:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce07:	



	pop {r4, r5, r6, r7, r8, pc}



// ***************************************** //

.globl enemy08Hit  // **
enemy08Hit: // **
	push {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn1			//r5 = shield1 variables      //**

	ldr r0, [r4]				//r0 = bullets X coord
	ldr r1, [r5]				//r1 = shield1's X coord
	ldr r2, [r5, #12]			//r2 = shield's width
	ldr r3, [r4, #12]			//r3 = bullet's width

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX08:

	cmp r1, r2
	bgt endCheck08				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX08:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX08

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY08

	add r0, #1
	b checkBulletX08

endcheckBulletX08:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX08


checkY08:				// Loop only comes here if the bullet and shield share an X coord
	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =pawn1			//r5 = shield1 variables
	ldr r7, [r4, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY08:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck08


checkBulletY08:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY08

	cmp r7, r8
	bleq reduceSize08					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck08

	add r7, #1
	b checkBulletY08
	

endcheckBulletY08:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY08




endCheck08:


	pop {r4, r5, r6, r7, r8, r9, r10, pc}


.globl reduceSize08
reduceSize08:
	
	push {r4, r5, r6, r7, r8, lr}
	bl addScoreP
	ldr r4, =pawn1
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
	ble deleteShield08


	str r8, [r4,#8]
	str r6, [r4,#12]
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the shield (white)
	bl		endReduce08

deleteShield08:
	mov r6, #1				// makes shield1's width 0
	str r6, [r4, #12]
	str r8, [r4, #8]		// stores old colour back

endReduce08:	



	pop {r4, r5, r6, r7, r8, pc} // **







