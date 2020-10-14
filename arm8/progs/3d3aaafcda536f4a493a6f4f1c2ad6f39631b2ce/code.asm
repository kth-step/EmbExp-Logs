	ldr x7, [x0,x1]
	ldr x25, [x0, #0]
	cmp x0, x25
	b.eq #0xC
	ldr x13, [x7, #12]
	b #0x8
	ldr x22, [x24, #4]
