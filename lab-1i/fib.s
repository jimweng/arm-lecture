	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	@ i=R6,r3=0,r4=1,r5=-1
	mov r3,#0
	mov r4,#1
	sub r5,r3,#1
	mov r6,#0
.For:
	cmp r6,r0
	ble .L3
	mov r0,r4
	pop {r3, r4, r5, r6, pc}

	@ END CODE MODIFICATION
.L3:
	@ SUM = r3, result =r4, previous =r5
	add r3,r4,r5
	mov r5,r4
	mov r4,r3
	add r6,#1
	bl .For

	.size fibonacci, .-fibonacci
	.end
