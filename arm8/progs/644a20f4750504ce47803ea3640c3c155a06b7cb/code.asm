	ldr x13, [x22,x9]
	ldr x9, [x28, #0]
	cmp x22, x9
	b.eq #0xC
	ldr x25, [x13, #26]
	b #0x8
	ldr x26, [x26]
