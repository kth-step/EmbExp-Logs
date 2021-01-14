	ldr x29, [x23,x23]
	ldr x10, [x12, #198]
	cmp x23, x10
	b.eq #0xC
	ldr x7, [x29, #67]
	b #0x8
	ldr x3, [x27]
