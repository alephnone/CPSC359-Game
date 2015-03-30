
	
/* Controls player movement
 * Args:
 * none
 * Return:
 * none
 */
 
 


	
/* Move to the right*/
.globl MRight
MRight:
	push {r4-r10,lr}

	ldr		r4,	=player		// load player
	ldr		r5,	[r4]		// load x into r5
	ldr		r6,	[r4,#4]		// load y into r6
	ldr		r9,	[r4,#8]		// load the colour into r9
	mov		r10, #0x0000	// store black color in r10
	
	
	str	r10, [r4,#8]		//store the color black
	bl		drawPlayer		//clear the previous player	
	 
	add		r5, #10			// increase x co-ordinate
	str		r9, [r4,#8]		// store original colour
	cmp		r5,	#1000		// don't go out of bounds	
	strlt	r5,	[r4]		// store back to the player
	
	bl drawPlayer			// draw the player
	bl moveEnemies
	pop {r4-r10, pc}

/* Move to the left*/
.globl MLeft
MLeft:
	push {r4-r10,lr}

	ldr		r4,	=player		// load player
	ldr		r5,	[r4]		// load x into r5
	ldr		r6,	[r4,#4]		// load y into r6
	ldr		r9,	[r4,#8]		// load the colour into r9
	mov		r10, #0x0000	// store black color in r10
	
	
	str	r10, [r4,#8]		//store the color black
	bl		drawPlayer		//clear the previous player	
	 
	sub	r5, #10				// decrease x co-ordinate
	str		r9, [r4,#8]		// store original colour
	cmp		r5,	#1			// don't go out of bounds	
	strgt	r5,	[r4]		// store back to the player
	
	bl drawPlayer			// draw the player
	bl moveEnemies
	
	pop {r4-r10, pc}
	


/* Move to the top*/
.globl MUp
MUp:
	push {r4-r10,lr}
	
	ldr		r4,	=player		// load player
	ldr		r5,	[r4]		// load x into r5
	ldr		r6,	[r4,#4]		// load y into r6
	ldr		r9,	[r4,#8]		// load the colour into r9
	mov		r10, #0x0000	// store black color in r10
	
	
	str	r10, [r4,#8]		//store the color black
	bl		drawPlayer		//clear the previous player	
	 
	sub	r6, #10				// decrease x co-ordinate
	str		r9, [r4,#8]		// store original colour
	cmp		r6,	#1			// don't go out of bounds	
	strgt	r6,	[r4, #4]		// store back to the player
	
	bl drawPlayer			// draw the player
	bl moveEnemies
	
	pop {r4-r10, pc}

/* Move to the bottom*/
.globl MDown
MDown:
	push {r4-r10,lr}
	
	ldr		r4,	=player		// load player
	ldr		r5,	[r4]		// load x into r5
	ldr		r6,	[r4,#4]		// load y into r6
	ldr		r9,	[r4,#8]		// load the colour into r9
	mov		r10, #0x0000	// store black color in r10
	
	
	str	r10, [r4,#8]		//store the color black
	bl		drawPlayer		//clear the previous player	
	 
	add	r6, #10				// decrease x co-ordinate
	str		r9, [r4,#8]		// store original colour
	cmp		r6,	#768			// don't go out of bounds	
	strlt	r6,	[r4, #4]		// store back to the player
	
	bl drawPlayer			// draw the player	
	bl moveEnemies
	pop {r4-r10, pc}
		
	
/* Draw the player on screen */
.globl drawPlayer
drawPlayer:
	push	{r4,lr}
	
	ldr 	r4,	=player
	ldr		r0,	[r4]		// load x into r0
	ldr		r1,	[r4,#4]		// load y into r1
	ldr		r2,	[r4,#8]		// load color into r2
	ldr		r3,	[r4,#12]	// load width into r3
	bl 		drawBox			// draw the player
	
	pop		{r4, pc}
	
.globl drawBulletInitial
drawBulletInitial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet	
	ldr r5, =player
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #10  // r0 = the bullets X coord (x + 30)
	sub r1, r1, #10  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet1Initial
drawBullet1Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet1	
	ldr r5, =queen1
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #7  // r0 = the bullets X coord (x + 30)
	add r1, r1, #25  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet2Initial
drawBullet2Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet2
	ldr r5, =queen2
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #7  // r0 = the bullets X coord (x + 30)
	add r1, r1, #25  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet3Initial
drawBullet3Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet3
	ldr r5, =knight1
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #12  // r0 = the bullets X coord (x + 30)
	add r1, r1, #34  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet4Initial
drawBullet4Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet4	
	ldr r5, =knight2
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #12  // r0 = the bullets X coord (x + 30)
	add r1, r1, #34  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet5Initial
drawBullet5Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet5
	ldr r5, =knight3
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #12  // r0 = the bullets X coord (x + 30)
	add r1, r1, #34  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet6Initial
drawBullet6Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet6	
	ldr r5, =knight4
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #12  // r0 = the bullets X coord (x + 30)
	add r1, r1, #34  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}

.globl drawBullet7Initial
drawBullet7Initial:
	push	{r4, r5, lr}
	// r0 = players X coord
	// r1 = players Y coord+
	ldr	r4, =bullet7
	ldr r5, =knight5
	ldr r0, [r5]
	ldr r1, [r5,#4]
	add r0, r0, #12  // r0 = the bullets X coord (x + 30)
	add r1, r1, #34  // r1 = the bullets Y coord (y + 15)
	str r0, [r4]
	str r1, [r4,#4]
	
	ldr r2, [r4,#16] // r2 = bullets colour (black initially)  
	ldr r3, [r4, #12] // r3 = bullets width (10)
	bl	drawBox

	pop	{r4, r5, pc}





.globl ActionKey
ActionKey:
	

	push 	{r4, r5, r6, r7, r8, lr}

	bl drawBulletInitial


	bl drawBullet1Initial
	bl drawBullet2Initial
	bl drawBullet3Initial
	bl drawBullet4Initial
	bl drawBullet5Initial
	bl drawBullet6Initial
	bl drawBullet7Initial




	ldr		r4,	=bullet		// load bullet
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire:
	ldr		r4,	=bullet
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	sub 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox


	cmp r1, #41
	ble terminateBullet

	bl MedDelayLoop
	bl shield1Hit
	bl shield2Hit
	bl enemy01Hit
	bl enemy02Hit
	bl enemy03Hit
	bl enemy04Hit
	bl enemy05Hit
	bl enemy06Hit
	bl enemy07Hit
	bl enemy08Hit
	bl enemy09Hit
	bl enemy10Hit
	bl enemy11Hit
	bl enemy12Hit
	bl enemy13Hit
	bl enemy14Hit
	bl enemy15Hit
	bl enemy16Hit
	bl enemy17Hit


	ldr r0, =queen1
	bl	enemyHit

	ldr r0, =pawn2
	bl  enemyHit

	bl bulletFire




terminateBullet:

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]

// *********************** //

	ldr		r4,	=bullet1		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire1: //
	ldr		r4,	=bullet1 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet1 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire1


terminateBullet1: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet2		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire2: //
	ldr		r4,	=bullet2 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet2 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire2  //


terminateBullet2: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet3		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire3: //
	ldr		r4,	=bullet3 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet3 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire3  //


terminateBullet3: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet4		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire4: //
	ldr		r4,	=bullet4 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet4 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire4  //


terminateBullet4: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet5		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire5: //
	ldr		r4,	=bullet5 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet5 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire5  //


terminateBullet5: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet6		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire6: //
	ldr		r4,	=bullet6 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet6 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire6  //


terminateBullet6: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

// *********************** //

	ldr		r4,	=bullet7		// load bullet    // ** //
	ldr		r7, [r4,#8]   // r7 = bullets colour
	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox
	bl MedDelayLoop

bulletFire7: //
	ldr		r4,	=bullet7 //
	mov 	r6, #0x0000
	str     r6, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl	drawBox

	add 	r1, #40
	str		r1, [r4,#4]

	str		r7, [r4,#8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width	

	bl drawBox

	ldr r8, =boundary
	ldr r8, [r8]
	cmp r1, r8
	bge terminateBullet7 //
	mov r0, r4
	bl playerHit
	bl MedDelayLoop
	bl bulletFire7  //


terminateBullet7: //

	mov 	r6, #0x0000
	str     r6, [r4, #8]

	ldr		r0, [r4]		// r0 = bullets X
	ldr		r1, [r4,#4]		// r1 = bullets Y
	ldr		r2, [r4,#8]	    // r2 = bullet colour
	ldr 	r3, [r4,#12]	// r3 = bullets width

	bl		drawBox

	str		r7, [r4, #8]



// ******* //

endupdateBullet:
	
	pop {r4, r5, r6, r7, r8, pc}

	


.globl playerHit
playerHit:
// r0 contains the bullet address

	push {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	//ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =player			//r5 = shield1 variables      //**

	//ldr r0, [r4]				//r0 = bullets X coord
	//ldr r1, [r5]				//r1 = shield1's X coord
	//ldr r2, [r5, #12]			//r2 = shield's width
	//ldr r3, [r4, #12]			//r3 = bullet's width
	mov r11, r0

	ldr r3, [r11, #12]
	ldr r0, [r11]
	ldr r1, [r5]
	ldr r2, [r5, #12]

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX666:

	cmp r1, r2
	bgt endCheck666				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX666:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX666

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY666

	add r0, #1
	b checkBulletX666

endcheckBulletX666:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX666


checkY666:				// Loop only comes here if the bullet and shield share an X coord
//	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =player			//r5 = shield1 variables
	ldr r7, [r11, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord
	ldr r4, [r11]

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY666:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck666


checkBulletY666:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY666

	cmp r7, r8
	bleq reduceScore1					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck666

	add r7, #1
	b checkBulletY666
	

endcheckBulletY666:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY666





endCheck666:


	pop {r4, r5, r6, r7, r8, r9, r10, r11, pc}

.globl enemyHit
enemyHit:
// r0 contains the enemy address

	push {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, =bullet		


	mov r11, r0

	ldr r3, [r5, #12]
	ldr r0, [r5]
	ldr r1, [r11]
	ldr r2, [r11, #12]

	mov r9, r2					// r9 = shield's width
	mov r10, r3					// r10 = bullet's width

	add r2, r1
	add r3, r0
	
checkShieldX777:

	cmp r1, r2
	bgt endCheck777				//while r1 <= r2 (GOES THROUGH ALL POSSIBLE X VALUES OF THE SHIELD)

checkBulletX777:
	cmp r0, r3					//while	r0 <= r3 (GOES THROUGH ALL POSSIBLE X VALUES OF THE BULLET)
	
	bgt endcheckBulletX777

	cmp r0, r1					//if(r0 = r1) i.e. bullets X coord = shield1's X coord
	beq checkY777

	add r0, #1
	b checkBulletX777

endcheckBulletX777:
	add r1, #1
	sub r0, r10			// Resets r0
	b checkShieldX777


checkY777:				// Loop only comes here if the bullet and shield share an X coord
//	ldr	r4, =bullet				//r4 = bullet variables
	ldr r5, =bullet			//r5 = shield1 variables
	ldr r7, [r11, #4]			// r7 = bullets Y Coord
	ldr r8, [r5, #4]			// r8 = shields Y Coord
	ldr r4, [r11]

	mov r2, #10					// r2 = bullets width
	ldr r3, [r5, #12]			// r3 = shields width

	add r2, r7					// r2 = bullets width + bullets Y coord
	add r3, r8					// r3 = shields width + shields Y coord


checkShieldY777:
	cmp r8, r3		// while r8 <= r3	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE SHIELD)
	bgt	endCheck777


checkBulletY777:
	cmp r7, r2		// while r7 <= r2 	(GOES THROUGH ALL POSSIBLE Y VALUES OF THE BULLET)
	bgt endcheckBulletY777

	cmp r7, r8
	bleq addScore1					// only taken if the bullet and shield also share a Y coord (meaning the shield is HIT)

	cmp r7, r8
	beq endCheck777

	add r7, #1
	b checkBulletY777
	

endcheckBulletY777:
	add r8, #1		// Increments r8 (Shields Y coord)
	sub r7, r10 		// Resets r7 (Bullets Y coord)
	b	checkShieldY777





endCheck777:


	pop {r4, r5, r6, r7, r8, r9, r10, r11, pc}



.globl reduceScore1
reduceScore1:
	
	push {r4, r5, r6, r7, r8, lr}
	
	ldr r4, =scorecount
	ldrb r5, [r4,#1]
	cmp r5, #48
	bgt	reduceScore21

.globl reduceScore31
reduceScore31:

	bgt endreduceScore1
	
	mov r5, #57
	strb r5, [r4,#1]

	ldrb r5, [r4]
	sub r5, #1
	strb r5, [r4]

	bl		clearScore
	bl		drawScore

endreduceScore1:
	
	pop {r4, r5, r6, r7, r8, pc}




.globl reduceScore2
reduceScore2:
	
	push {r4, r5, r6, r7, r8, lr}
	
	ldr r4, =scorecount
	ldrb r5, [r4,#1]
	sub r5, #1
	strb r5, [r4,#1]

	bl		clearScore
	bl		drawScore

	pop {r4, r5, r6, r7, r8, pc}

.globl addScore1
addScore1:
	
	push {r4, r5, r6, r7, r8, lr}


	
	ldr r4, =scorecount
	ldrb r5, [r4,#1]
	cmp r5, #57
	blt	addScore21

	
	mov r5, #48
	strb r5, [r4,#1]

	ldrb r5, [r4]
	add r5, #1
	strb r5, [r4]

	bl		clearScore
	bl		drawScore

.globl addScore31
addScore31:

endaddScore1:
	
	pop {r4, r5, r6, r7, r8, pc}




.globl addScore2
addScore2:
	
	push {r4, r5, r6, r7, r8, lr}
	
	ldr r4, =scorecount
	ldrb r5, [r4,#1]
	add r5, #1
	strb r5, [r4,#1]

	bl		clearScore
	bl		drawScore

	pop {r4, r5, r6, r7, r8, pc}






.globl addScoreQ
addScoreQ:
	
	push {r4, r5, r6, r7, r8, lr}

	
	ldr r4, =scorecount
	ldrb r5, [r4]
	cmp r5, #57
	blt	addScore21Q

	
	mov r5, #48
	strb r5, [r4]



	bl		clearScore
	bl		drawScore

.globl addScore31Q
addScore31Q:
	


endaddScore1Q:
	
	pop {r4, r5, r6, r7, r8, pc}




.globl addScore2Q
addScore2Q:
	
	push {r4, r5, r6, r7, r8, lr}
	
	ldr r4, =scorecount
	ldrb r5, [r4]
	add r5, #1
	strb r5, [r4]

	bl		clearScore
	bl		drawScore

	pop {r4, r5, r6, r7, r8, pc}


.globl addScoreP
addScoreP:
	
	push {r4, r5, r6, r7, r8, lr}

	
	ldr r4, =scorecount
	ldrb r5, [r4,#2]
	cmp r5, #57
	blt	addScore21P

	
	mov r5, #48
	strb r5, [r4,#2]

	ldrb r5, [r4,#1]
	add r5, #1
	strb r5, [r4,#1]

	bl		clearScore
	bl		drawScore


	

.globl addScore31P
addScore31P:

endaddScore1P:
	
	pop {r4, r5, r6, r7, r8, pc}




.globl addScore2P
addScore2P:
	
	push {r4, r5, r6, r7, r8, lr}
	
	ldr r4, =scorecount
	ldrb r5, [r4,#2]
	add r5, #5
	strb r5, [r4,#2]

	bl		clearScore
	bl		drawScore

	pop {r4, r5, r6, r7, r8, pc}





.section .data
.align 4

/* Data Structure for player variables
 * Args:
 *  none
 * Return:
 *  none
 */
.globl player
player:
	.int	500				// x co-ord
	.int	600				// y co-ord
	.int	0xf000 			// color for player
	.int	30				// width of player

/* Data structure for the bullet */
.globl bullet
bullet:
	.int    0				// bullet x coord
	.int    0				// bullet y coord
	.int    0xf0f2			// color for bullet
	.int 	10				// width of bullet
	.int 	0x0000

.globl boundary
boundary:
	.int	700
	
