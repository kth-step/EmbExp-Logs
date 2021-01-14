	ldr x18, [x29,x23]
	ldr x20, [x5, #218]
	cmp x29, x20
	b.eq #0xC
	ldr x1, [x18, #99]
	b #0x8
	ldr x23, [x18]
