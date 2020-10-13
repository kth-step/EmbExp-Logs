	ldr x6, [x28,x26]
	ldr x18, [x26, #0]
	cmp x28, x18
	b.eq #0xC
	ldr x20, [x6, #162]
	b #0x8
	ldr x6, [x27, #16]
