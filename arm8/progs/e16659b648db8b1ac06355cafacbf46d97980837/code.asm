	ldr x28, [x23,x23]
	ldr x1, [x5, #240]
	cmp x23, x1
	b.eq #0xC
	ldr x23, [x28, #23]
	b #0x8
	ldr x20, [x8, #4]
