	ldr x4, [x19,x16]
	ldr x24, [x1, #0]
	cmp x19, x24
	b.eq #0xC
	ldr x6, [x4, #192]
	b #0x8
	ldr x27, [x8, #16]
