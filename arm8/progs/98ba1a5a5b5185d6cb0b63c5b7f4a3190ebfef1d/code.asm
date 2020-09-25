	ldr x28, [x13,x27]
	ldr x1, [x15, #0]
	cmp x13, x1
	b.eq #0xC
	ldr x22, [x28, #206]
	b #0x8
	ldr x28, [x22]
