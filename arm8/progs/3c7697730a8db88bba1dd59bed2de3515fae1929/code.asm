	ldr x16, [x2,x3]
	ldr x24, [x3, #0]
	cmp x2, x24
	b.eq #0xC
	ldr x25, [x16, #249]
	b #0x8
	ldr x7, [x1]
