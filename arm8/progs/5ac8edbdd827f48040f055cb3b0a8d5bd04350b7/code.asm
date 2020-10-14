	ldr x20, [x26,x19]
	ldr x1, [x23, #0]
	cmp x26, x1
	b.eq #0xC
	ldr x29, [x20, #139]
	b #0x8
	ldr x10, [x29, #16]
