	ldr x25, [x23,x4]
	ldr x13, [x0, #97]
	cmp x23, x13
	b.eq #0xC
	ldr x18, [x25, #184]
	b #0x8
	ldr x28, [x1, #16]
