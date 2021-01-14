	ldr x8, [x4,x9]
	ldr x23, [x17, #203]
	cmp x4, x23
	b.eq #0xC
	ldr x15, [x8, #44]
	b #0x8
	ldr x4, [x11]
