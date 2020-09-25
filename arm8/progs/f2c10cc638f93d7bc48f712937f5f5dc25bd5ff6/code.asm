	ldr x18, [x15,x2]
	ldr x29, [x8, #0]
	cmp x15, x29
	b.eq #0xC
	ldr x15, [x18, #40]
	b #0x8
	ldr x28, [x23, #16]
