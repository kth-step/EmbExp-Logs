	ldr x29, [x18,x13]
	ldr x9, [x25, #0]
	cmp x18, x9
	b.eq #0xC
	ldr x0, [x29, #1]
	b #0x8
	ldr x18, [x16]
