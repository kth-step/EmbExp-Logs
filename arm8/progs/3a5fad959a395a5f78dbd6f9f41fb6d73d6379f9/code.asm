	ldr x23, [x9,x3]
	ldr x1, [x26, #0]
	cmp x9, x1
	b.eq #0xC
	ldr x19, [x23, #196]
	b #0x8
	ldr x20, [x4, #8]
