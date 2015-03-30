.section .data
.align 4

.globl score
score:
	.asciz "SCORE"
	
.globl scorecount
scorecount:
	.asciz	"000"		//blank ascii string (Add ascii values to change score)
	
	
.section .text

/* Initialize the score counter to start at 100 points */
.globl InitScore
InitScore:
	push {lr}
	
	ldr		r1,	=scorecount		// get score 
	mov		r2,	#49				// starting score is 111
	strb	r2,	[r1]			// store score back into string
	
	
	mov		r2,	#49				// starting score is 111
	strb	r2,	[r1, #1]			// store score back into string
	
	mov		r2,	#49				// starting score is 111
	strb	r2,	[r1, #2]			// store score back into string
	
	pop	{pc}
	
	
/* Clear Score */
.globl clearScore
clearScore:
	push {lr}
	
	mov	r0,	#75
	mov	r1,	#700
	mov	r2,	#0x0000
	mov	r3,	#25
	bl drawBox		//draw a black box over the previous score
	
	pop {pc}


/* Update Score
 * Args:
 * r0 - value you want to increase/decrease in score
 * Return
 * none
 */
.globl UpdateScore
UpdateScore:

	ldr		r1, =scorecount		//get score
	mov		r2,	#0
	add		r2,	r0				//add value in r0 to r2 and store in r2
	cmp		r2,	#57				//if the value is > 9 we need to carry over
	bgt		carry
			
carry:
	


/* UpdateScore High Bit
 * Args:
 * r0 - how much you want to increase (or decrease) score 
 * MUST BE SOME ASCII VALUE
 * Return:
 * none
 */
 
 .globl UpdateScoreHB
 UpdateScoreHB:
	push {lr}
	
	ldr		r1, =scorecount		//get score
	mov		r2,	#0
	add		r2,	r0				//add value in r0 to r2 and store in r2
	strb	r0,	[r1]			//store score
	bl		clearScore
	bl		drawScore
	
	pop {pc}
	
/* UpdateScore Middle Bit
 * Args:
 * r0 - how much you want to increase (or decrease) score 
 * MUST BE SOME ASCII VALUE
 * Return:
 * none
 */
 
 .globl UpdateScoreMB
 UpdateScoreMB:
	push {lr}
	
	ldr		r1, =scorecount		//get score
	mov		r2,	#0
	add		r2,	r0				//add value in r0 to r2 and store in r2
	strb	r2,	[r1, #1]		//store score
	bl		clearScore
	bl		drawScore
	
	pop {pc}
	
/* UpdateScore Low Bit
 * Args:
 * r0 - how much you want to increase (or decrease) score 
 * MUST BE SOME ASCII VALUE
 * Return:
 * none
 */
 
 .globl UpdateScoreLB
 UpdateScoreLB:
	push {lr}
	
	ldr		r1, =scorecount		//get score
	mov		r2,	#0
	add		r2,	r0				//add value in r0 to r2 and store in r2
	strb	r2,	[r1, #2]		//store score
	bl		clearScore
	bl		drawScore
	
	pop {pc}
	
/* Draw the current score */
.globl drawScore
drawScore:
	push {lr}
	
	ldr		r0, =1
	ldr		r1, =700
	ldr		r2, =0xF800	
	ldr		r3,	=score
	bl		drawSentence	// draw "Score"
	
	ldr		r0,	=75
	ldr		r1,	=700
	ldr		r2, =0xF800	
	ldr		r3,	=scorecount
	bl		drawSentence	// draw score value
	pop	{pc}
