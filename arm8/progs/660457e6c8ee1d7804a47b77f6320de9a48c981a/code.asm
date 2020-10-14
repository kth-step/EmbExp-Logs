	ldr x5, [x8,x15]
	ldr x18, [x19, #0]
	cmp x8, x18
	b.eq #0xC
	ldr x20, [x5, #15]
	b #0x8
	ldr x0, [x9, #16]
