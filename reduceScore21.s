.globl reduceScore21


reduceScore21:
	bl reduceScore2

	b reduceScore31


.globl addScore21


addScore21:
	bl addScore2

	b addScore31


.globl addScore21Q


addScore21Q:
	bl addScore2Q

	b addScore31Q

.globl addScore21P


addScore21P:
	bl addScore2P

	b addScore31P



