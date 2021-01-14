	ldr x2, [x13,x19]
	ldr x7, [x1, #39]
	cmp x13, x7
	b.eq #0xC
	ldr x3, [x2, #55]
	b #0x8
	ldr x28, [x15, #16]
