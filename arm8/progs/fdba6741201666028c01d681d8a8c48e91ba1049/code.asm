	ldr x25, [x21,x8]
	ldr x1, [x29, #184]
	cmp x21, x1
	b.eq #0xC
	ldr x4, [x25, #252]
	b #0x8
	ldr x19, [x11]
