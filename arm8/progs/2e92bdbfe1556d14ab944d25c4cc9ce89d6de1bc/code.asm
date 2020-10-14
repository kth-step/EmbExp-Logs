	ldr x19, [x6,x24]
	ldr x16, [x2, #0]
	cmp x6, x16
	b.eq #0xC
	ldr x0, [x19, #130]
	b #0x8
	ldr x10, [x3, #4]
