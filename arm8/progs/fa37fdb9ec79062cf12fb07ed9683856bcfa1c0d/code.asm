	ldr x2, [x26,x27]
	ldr x20, [x2, #0]
	cmp x26, x20
	b.eq #0xC
	ldr x29, [x2, #99]
	b #0x8
	ldr x1, [x21]
