	ldr x23, [x18,x25]
	ldr x16, [x5, #0]
	cmp x18, x16
	b.eq #0xC
	ldr x5, [x23, #129]
	b #0x8
	ldr x15, [x22, #16]
