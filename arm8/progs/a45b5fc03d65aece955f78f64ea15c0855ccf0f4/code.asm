	ldr x23, [x7,x1]
	ldr x16, [x28, #0]
	cmp x7, x16
	b.eq #0xC
	ldr x20, [x23, #221]
	b #0x8
	ldr x1, [x0, #8]
