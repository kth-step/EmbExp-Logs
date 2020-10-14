	ldr x25, [x15,x28]
	ldr x13, [x14, #0]
	cmp x15, x13
	b.eq #0xC
	ldr x18, [x25, #1]
	b #0x8
	ldr x23, [x19, #16]
