	ldr x16, [x18,x27]
	ldr x6, [x23, #0]
	cmp x18, x6
	b.eq #0xC
	ldr x2, [x16, #3]
	b #0x8
	ldr x9, [x17]
