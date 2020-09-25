	ldr x29, [x18,x26]
	ldr x26, [x2, #0]
	cmp x18, x26
	b.eq #0xC
	ldr x0, [x29, #217]
	b #0x8
	ldr x3, [x2, #4]
