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
	push {r3, r4, r5, lr}
	
	mov r4, r0
	mov r5, #0
	mov r6, #1
	mov r8, #0
.Loop:
	add r8, r8, #1
	add r7, r6, r5
	mov r5, r6
	mov r6, r7
	cmp r4, r8
	bgt .Loop

	mov r0, r7
	
	pop {r3, r4, r5, pc}		
        
        @ END CODE MODIFICATION
	
	.size fibonacci, .-fibonacci
	.end
