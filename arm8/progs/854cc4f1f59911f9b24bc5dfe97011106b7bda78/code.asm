	ldr x9, [x25,x5]
	ldr x27, [x3, #0]
	cmp x25, x27
	b.eq #0xC
	ldr x19, [x9, #129]
	b #0x8
	ldr x4, [x0, #16]
