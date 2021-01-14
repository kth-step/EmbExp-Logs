	ldr x23, [x7,x29]
	ldr x11, [x22, #76]
	cmp x7, x11
	b.eq #0xC
	ldr x20, [x23, #188]
	b #0x8
	ldr x3, [x3, #4]
