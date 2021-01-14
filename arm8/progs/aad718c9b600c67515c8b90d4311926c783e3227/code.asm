	ldr x27, [x13,x20]
	ldr x19, [x0, #90]
	cmp x13, x19
	b.eq #0xC
	ldr x18, [x27, #8]
	b #0x8
	ldr x23, [x2]
