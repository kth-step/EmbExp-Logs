	ldr x16, [x27,x26]
	ldr x10, [x13, #0]
	cmp x27, x10
	b.eq #0xC
	ldr x10, [x16, #90]
	b #0x8
	ldr x10, [x6, #16]
