	ldr x23, [x24,x19]
	ldr x22, [x5, #0]
	cmp x24, x22
	b.eq #0xC
	ldr x26, [x23, #129]
	b #0x8
	ldr x26, [x16, #16]
