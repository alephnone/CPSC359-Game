.section    .init
.globl     _start

_start:
    b       main
    
.section .text

/* TASKS :

- Make the shields responsive to hits and figure out why the bottom left portion crashes the game
(* Shield reduction size is working correctly, the logic loop in hitShield isn't however *)

*/

main:
    mov     sp, #0x8000
	
	bl		EnableJTAG
	bl		InitFrameBuffer			// Init frame buffer
	bl		InitCont				// Init SNES controller

	
.globl startMenu 					// global so that you can return here from the pause menu
startMenu:
	//bl		DrawMenus 				// Draw menu text
	//bl		MenuControl 			// Enable the controller to in the menu
	//cmp		r0, #0 					// If 0 is returned from the menu quit the game
	//bne 	haltLoop$ 

	//bl		LongerDelayLoop
	
playGame:
	bl		ClrScreen				// Clear the screen
	
	
		
	bl		drawScore

	mov		r0,	#53
	bl		UpdateScoreLB
	mov		r0,	#53
	bl		UpdateScoreHB
	mov		r0,	#49
	bl		UpdateScoreMB
	 
	
	// Draws game name
	ldr		r0, =650
	ldr		r1, =675
	ldr		r2, =0xffff		
	ldr		r3,	=GameName
	bl		drawSentence
	 
	// Draws author names
	ldr		r0, =300
	ldr		r1, =700
	ldr		r2, =0xc618	
	ldr		r3,	=Author
	bl		drawSentence
	
	bl		GameControl				// play the game


.globl haltLoop$ 
haltLoop$:

	/* draw two big black boxes and loop forever and ever */
	
	ldr		r0, =0
	ldr		r1, =1
	ldr		r2, =0x0000
	ldr		r3,	=712
	bl 		drawBox
	
	ldr		r0, =250
	ldr		r1, =1
	ldr		r2, =0x0000
	ldr		r3,	=712
	bl 		drawBox				
	b		haltLoop$



.section .data

.align 4
font:		.incbin	"font.bin"
