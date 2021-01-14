	ldr x23, [x15,x11]
	ldr x22, [x6, #33]
	cmp x15, x22
	b.eq #0xC
	ldr x20, [x23, #153]
	b #0x8
	ldr x29, [x3, #16]
