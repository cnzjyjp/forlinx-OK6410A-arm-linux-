.global strsort
.extern strbubble
.text
.arm
strsort:
	mov r3,#-1
loop1:
	add r3,r3,#1
	cmp r3,r1
	bge end
	mov r4,#0
	mov r6,r0
	add r7,r0,r2
	sub r5,r1,r3
loop2:
	cmp r4,r5
	bge loop1
	stmfd sp!,{r0-r7,lr}
	mov r0,r6
	mov r1,r7
	bl  strbubble
	ldmfd sp!,{r0-r7,lr}
	add r4,r4,#1
	cmp r4,r5
	bge loop1
	add r6,r6,r2
	add r7,r7,r2
	b loop2
end:
	mov PC,LR
.end
