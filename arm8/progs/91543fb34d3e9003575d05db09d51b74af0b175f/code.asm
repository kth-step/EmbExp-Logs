	ldr x23, [x2,x1]
	ldr x26, [x24, #0]
	cmp x2, x26
	b.eq #0xC
	ldr x29, [x23, #66]
	b #0x8
	ldr x3, [x2]
