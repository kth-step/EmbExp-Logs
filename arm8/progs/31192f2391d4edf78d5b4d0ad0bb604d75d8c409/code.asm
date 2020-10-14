	ldr x25, [x27,x19]
	ldr x0, [x12, #0]
	cmp x27, x0
	b.eq #0xC
	ldr x23, [x25, #45]
	b #0x8
	ldr x24, [x19]
