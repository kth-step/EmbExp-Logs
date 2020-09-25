	ldr x3, [x15,x1]
	ldr x1, [x10, #0]
	cmp x15, x1
	b.eq #0xC
	ldr x29, [x3, #44]
	b #0x8
	ldr x21, [x28]
