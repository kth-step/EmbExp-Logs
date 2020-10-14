	ldr x10, [x19,x23]
	ldr x20, [x7, #0]
	cmp x19, x20
	b.eq #0xC
	ldr x13, [x10, #153]
	b #0x8
	ldr x3, [x18]
