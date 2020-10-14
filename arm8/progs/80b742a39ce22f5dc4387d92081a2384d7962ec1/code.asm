	ldr x29, [x26,x25]
	ldr x20, [x14, #0]
	cmp x26, x20
	b.eq #0xC
	ldr x25, [x29, #153]
	b #0x8
	ldr x10, [x20, #16]
