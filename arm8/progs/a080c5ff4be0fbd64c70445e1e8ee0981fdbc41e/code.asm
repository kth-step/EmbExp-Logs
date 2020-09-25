	ldr x27, [x29,x26]
	ldr x24, [x17, #0]
	cmp x29, x24
	b.eq #0xC
	ldr x26, [x27, #39]
	b #0x8
	ldr x29, [x3, #16]
