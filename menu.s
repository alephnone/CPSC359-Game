.section .data 
.align 4


.globl GameMenu
GameMenu:	
	.asciz 	"GAME MENU"

.globl PlayGame
PlayGame:	
	.asciz 	"Resume "

.globl QuitGame	
QuitGame:	
	.asciz "Quit Game"

.globl GameName 
GameName:	
	.asciz "It's a game"

.globl Author
Author:	
	.asciz "By Alexis Tavares (10136734) and Branko Bajic (10134885)"

.globl menuSelected 
menuSelected:
	.int		0


.section .text
/* Clears the menu */
.globl ClearMenu
ClearMenu:
	push {lr}		
	
	ldr	r0,	=340
	ldr	r1,	=260
	ldr	r2,	=0x0000
	mov	r3,	#300
	bl	drawBox			//draw a black box
	
	pop  {pc}		
	
	
/* Draws the menu stuff*/
.globl DrawMenus
DrawMenus:
	push {lr}
	
	/* 
	ro - x
	r1 = y
	r3 = address of data structure
	 */
	
	ldr	r0,	=340
	ldr	r1,	=260
	ldr	r2,	=0xC618
	mov	r3,	#250
	bl	drawBox			//draw a grey background
	
	
	// Draw  "Game Menu"
	ldr		r0, =410
	ldr		r1, =275
	ldr		r2, =0xF0F0		// Pink color
	ldr		r3,	=GameMenu
	bl		drawSentence
	
	// Draws "Resume Game"
	ldr		r0, =410
	ldr		r1, =360
	ldr		r2, =0xff00	
	ldr		r3,	=PlayGame
	bl		drawSentence
	 
	// Draws "Quit Game"
	ldr		r0, =410
	ldr		r1, =415
	ldr		r2, =0xff00		
	ldr		r3,	=QuitGame
	bl		drawSentence
	 
	
	// Puts selector on "Start Game"
	ldr		r0, =menuSelected	// Load the address for the menu selection
	mov		r1, #1
	str		r1, [r0]			// Reset selection
	bl		MenuSelect		// Draw the selector
	
	pop {pc}

/* Moves the main menu selector*/
.globl MenuSelect
MenuSelect:
	selection	.req	r4	// What menu item is selected
	selectAdrs	.req	r5	// Address of selector integer
	push	{r4-r5, lr}
	
	ldr		selectAdrs, =menuSelected	// Load address of selection
	ldr		selection, [selectAdrs]	// Load the selection
	
	cmp		selection, #0	// Test to see is PlayGame selected
	beq		quitGameSelect$ // if it is branch to change the selection
	
PlayGameSelect$:
	ldr		r0,	=395		// Move the x coordinate in
	ldr		r1,	=360		// Move the y coordinate in
	ldr		r2, =0xF000		// Move the color in
	ldr		r3, =110		// Move width of the text
	bl		DrawSelector	// Draw the selector
	
	ldr		r0,	=395		// Move the x coordinate in
	ldr		r1,	=415		// Move the y coordinate in
	ldr		r2, =0x0000		// Move the color in
	ldr		r3, =110		// Move width of the text
	bl		DrawSelector	// Erase old selector
	
	mov		r0,	#0
	str		r0, [selectAdrs]// Store the selection
	
	
	b		doneSelect$		// Done!
	
quitGameSelect$:
	ldr		r0,	=395		// Move the x coordinate in
	ldr		r1,	=415		// Move the y coordinate in
	ldr		r2, =0xF000		// Move the color in
	ldr		r3, =110		// Move width of the text
	bl		DrawSelector	// Draw the selector
	
	ldr		r0,	=395		// Move the x coordinate in
	ldr		r1,	=360		// Move the y coordinate in
	ldr		r2, =0x0000		// Move the color in
	ldr		r3, =110		// Move width of the text
	bl		DrawSelector	// Erase old selector
	
	mov		r0,	#1
	str		r0, [selectAdrs]	// Store the selection
	
doneSelect$:	

	
	.unreq	selection
	.unreq	selectAdrs
	pop		{r4-r5, pc}
