	ldr x24, [x11,x6]
	ldr x12, [x4, #0]
	cmp x11, x12
	b.eq #0xC
	ldr x20, [x24, #153]
	b #0x8
	ldr x20, [x17]
