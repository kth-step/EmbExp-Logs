	ldr x27, [x14,x15]
	ldr x0, [x18, #0]
	cmp x14, x0
	b.eq #0xC
	ldr x29, [x27, #162]
	b #0x8
	ldr x26, [x29, #16]
