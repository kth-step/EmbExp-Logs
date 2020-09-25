	ldr x20, [x0,x24]
	ldr x18, [x16, #0]
	cmp x0, x18
	b.eq #0xC
	ldr x29, [x20, #36]
	b #0x8
	ldr x23, [x13]
