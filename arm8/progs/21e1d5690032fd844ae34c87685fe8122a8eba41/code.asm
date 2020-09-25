	ldr x28, [x15,x17]
	ldr x16, [x4, #0]
	cmp x15, x16
	b.eq #0xC
	ldr x29, [x28, #67]
	b #0x8
	ldr x13, [x25]
