	ldr x7, [x15,x17]
	ldr x12, [x29, #0]
	cmp x15, x12
	b.eq #0xC
	ldr x21, [x7, #17]
	b #0x8
	ldr x28, [x24]
