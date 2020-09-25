	ldr x12, [x23,x29]
	ldr x7, [x29, #0]
	cmp x23, x7
	b.eq #0xC
	ldr x15, [x12, #153]
	b #0x8
	ldr x15, [x0]
