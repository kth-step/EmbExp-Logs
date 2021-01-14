	ldr x23, [x0,x24]
	ldr x1, [x11, #138]
	cmp x0, x1
	b.eq #0xC
	ldr x1, [x23, #180]
	b #0x8
	ldr x13, [x1, #4]
