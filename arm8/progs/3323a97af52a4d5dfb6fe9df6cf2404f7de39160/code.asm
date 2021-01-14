	ldr x29, [x7,x18]
	ldr x0, [x3, #250]
	cmp x7, x0
	b.eq #0xC
	ldr x13, [x29, #105]
	b #0x8
	ldr x1, [x1, #16]
