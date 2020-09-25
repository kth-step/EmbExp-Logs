	ldr x27, [x26,x26]
	ldr x7, [x15, #0]
	cmp x26, x7
	b.eq #0xC
	ldr x15, [x27, #44]
	b #0x8
	ldr x6, [x25, #16]
