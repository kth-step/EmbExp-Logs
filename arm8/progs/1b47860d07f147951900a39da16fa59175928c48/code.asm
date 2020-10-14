	ldr x7, [x0,x3]
	ldr x0, [x12, #0]
	cmp x0, x0
	b.eq #0xC
	ldr x23, [x7, #71]
	b #0x8
	ldr x27, [x8]
