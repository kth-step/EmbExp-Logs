	ldr x17, [x16,x5]
	ldr x12, [x1, #0]
	cmp x16, x12
	b.eq #0xC
	ldr x19, [x17, #122]
	b #0x8
	ldr x29, [x16, #4]
