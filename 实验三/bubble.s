.global strbubble
.text
.arm
strbubble:
	mov r3,r0	
	mov r4,r1
	mov r5,#0
compare:
	ldrb r6,[r3]
	ldrb r7,[r4]
	cmp r6,r7
	blt swap
	bgt end
	add r5,r5,#1
	cmp r5,r2
	beq end
	add r3,r3,#1
	add r4,r4,#1
	b   compare
swap:
	mov r3,r0	
	mov r4,r1
	mov r5,#0
loop:	
	ldrb r6,[r3]
	ldrb r7,[r4]
	strb r7,[r3]
	strb r6,[r4]
	add r3,r3,#1
	add r4,r4,#1
	add r5,r5,#1
	cmp r5,r2
	beq end
	b   loop
end:
	mov PC,LR
.end
