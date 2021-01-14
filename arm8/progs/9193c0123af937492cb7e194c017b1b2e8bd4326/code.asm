	ldr x21, [x5,x23]
	ldr x15, [x25, #108]
	cmp x5, x15
	b.eq #0xC
	ldr x19, [x21, #181]
	b #0x8
	ldr x13, [x9]
