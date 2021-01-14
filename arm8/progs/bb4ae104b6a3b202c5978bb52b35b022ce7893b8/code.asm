	ldr x23, [x7,x4]
	ldr x26, [x1, #244]
	cmp x7, x26
	b.eq #0xC
	ldr x16, [x23, #59]
	b #0x8
	ldr x9, [x6, #8]
