	ldr x10, [x23,x11]
	ldr x23, [x14, #0]
	cmp x23, x23
	b.eq #0xC
	ldr x28, [x10, #188]
	b #0x8
	ldr x9, [x2]
