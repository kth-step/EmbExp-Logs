	ldr x20, [x4,x13]
	ldr x1, [x18, #0]
	cmp x4, x1
	b.eq #0xC
	ldr x3, [x20, #50]
	b #0x8
	ldr x24, [x4]
