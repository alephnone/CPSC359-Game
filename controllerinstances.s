.section .text

/* Moves the main menu selector
* Args:
* none
* Return:
* r0 	- 0  to start game
* 		- 1  to quit game
*/
.globl MenuControl
MenuControl:
	push	{lr}
MenuControllerRead:
		bl		LongDelayLoop 					// no double clicking allowed
		bl 		ReadFromCont 					// read from SNES
		ldr 	r1, =0xFFFF 					// mask for all buttons unpressed
		teq 	r0,	r1 							// test if buttons unpressed
		beq 	MenuControllerRead 				// read controller again if not pressed
		ldr 	r1, =0xFEFF 					// mask for A button
		teq 	r0, r1 							// test if A pressed
		beq 	MenuAPress
		ldr 	r1, =0xFFEF 					// mask for UP on dpad
		teq 	r0, r1 							// test if UP
		beq 	MenuChangeSelection
		ldr 	r1, =0xFFDF 					// mask for DOWN on dpad
		teq 	r0, r1 							// test if DOWN
		beq 	MenuChangeSelection
		b 		MenuControllerRead 				// branch if multiple button presses at the same time

MenuAPress:
		ldr 	r0, =menuSelected 				// Load adddress of what is selected in the menu
		ldr 	r1, [r0] 						// Load what is actually selected
		cmp 	r1, #0 							// See if restart game is selected
		bne	 	MenuQuitGame					// Otherwise selection is to quit game
	
MenuStartGame:
		bl		ClearMenu		// erase menu
		mov 	r0, #0
		b 		MenuDone
	
MenuQuitGame:
		bl		ClearMenu		// erase menu
		mov 	r0, #1
		b 		haltLoop$
	
MenuChangeSelection:
		bl 		MenuSelect
		b 		MenuLetGo

MenuLetGo:
		bl		LongDelayLoop 					// Delay loop so user doesn't double click
		bl		ReadFromCont 					// Read from the controller
		ldr 	r1, =0xFFFF						// Load the value when no buttons are pressed
		teq 	r0, r1 							// Compare value when no buttons pressed to what we got from controller
		bne 	MenuLetGo						// Until no buttons pressed loop back up
		b		MenuControllerRead 				// After no buttons are pressed check for next button
	
MenuDone:
		pop	{pc}




/* Controls the player inside the game
 * Args:
 *  none
 * Return:
 *  none
 */
.globl GameControl
GameControl:
	push	{lr}
	
playerControl$:
		
		bl	LongDelayLoop	// Don't allow movement when buttons are held down
		bl	drawShields		// Draw shields
		bl	drawEnemy		// Draw Enemies
		bl	ReadFromCont	// read from the SNES
		ldr	r1, =0xFFFF		// full mask to test that no buttons are pressed
		teq	r0, r1			
		beq	playerControl$	// if no buttons are pressed read the controller again


		ldr	r1, =0xFFF7		// mask for bit [3]
		teq	r0, r1			// test if 'start' was pressed
		beq	startPress$

		ldr	r1, =0xFEFF		// mask for bit [8]
		teq	r0, r1			// test if 'a' was pressed 
		beq	aPress$

		ldr	r1, =0xFFEF		// mask for bit [4]
		teq	r0, r1			// test if 'up' was pressed
		beq	upPress$

		ldr	r1, =0xFFDF		// mask for bit [5]
		teq	r0, r1			// test if 'down' was pressed
		beq	downPress$

		ldr	r1, =0xFFBF		// mask for bit [6]
		teq	r0, r1			// test if 'left' was pressed
		beq	leftPress$

		ldr	r1, =0xFF7F		// mask for bit [7]
		teq	r0, r1			// test if 'right' was pressed
		beq	rightPress$

		b	playerControl$	// If multpile buttons were pressed at the same time read again
		
  startPress$:
	bl		DrawMenus		// Draw the in game menu
	bl		MenuControl		// Make the controller control the in game menu

		
	cmp		r0, #1			// If 1 was returned that means player hit "restart game"
	beq		playerControl$	// New game redrawn, and now let controller control it
		
	cmp		r0, #2			// If 2 was returned that means player hit "quit game"
	beq		haltLoop$		// So go to the halt loop
		
	b 		letGo$			// Wait till no buttons are pressed

		
  aPress$:
	bl	ActionKey		// Try to unlock a door or exit door
	b	letGo$			// Wait till no buttons are pressed



  upPress$:
	bl	MUp				// Move player up 
	b	letGo$			// Wait till no buttons are pressed

  downPress$:
	bl	MDown			// Move player down 
	b	letGo$			// Wait till no buttons are pressed

  leftPress$:
	bl	MLeft			// Move player left 
	b	letGo$			// Wait till no buttons are pressed

  rightPress$:
	bl	MRight			// Move player right 
	b	letGo$			// Wait till no buttons are pressed
		
letGo$:
		bl	LongDelayLoop	// Delay loop so you can't press 2x
		bl	ReadFromCont	// Read from the SNES
		ldr	r1, =0xFFFF		// value when no buttons are pressed
		teq	r0, r1			// Compare with what was read from SNES
		bne	letGo$			// loop till no buttons are pessed
		b	playerControl$	// after no buttons are pressed get the next button press
	
	pop {pc}
	
	
	
/* Delay loop so that player doesn't accidently click a few times in a row
 * Args:
 *  none
 * Return:
 *  none
 */
.globl LongDelayLoop
LongDelayLoop:
	push	{r4-r5,lr}
	
	mov	r4, #0		// set counter to 0
	ldr	r5, =100000 // Set large delay
LoopLoop$:
	add	r4, #1		// Add to counter
	cmp	r4, r5		
	blo	LoopLoop$	// Branch till looped r5 times
	
	pop		{r4-r5,pc}

.globl LongerDelayLoop
LongerDelayLoop:
	push	{r4-r5,lr}
	
	mov	r4, #0		// set counter to 0
	ldr	r5, =10000000 // Set large delay
Loop3Loop$:
	add	r4, #1		// Add to counter
	cmp	r4, r5		
	blo	Loop3Loop$	// Branch till looped r5 times
	
	pop		{r4-r5,pc}

.globl MedDelayLoop
MedDelayLoop:
	push	{r4-r5,lr}
	
	mov	r4, #0		// set counter to 0
	ldr	r5, =50000 // Set large delay
Loop2Loop$:
	add	r4, #1		// Add to counter
	cmp	r4, r5		
	blo	Loop2Loop$	// Branch till looped r5 times
	
	pop		{r4-r5,pc}

	
