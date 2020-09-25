	ldr x21, [x6,x0]
	ldr x19, [x8, #0]
	cmp x6, x19
	b.eq #0xC
	ldr x5, [x21, #165]
	b #0x8
	ldr x15, [x27]
