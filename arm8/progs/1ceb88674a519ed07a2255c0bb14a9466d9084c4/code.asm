	ldr x20, [x19,x15]
	ldr x23, [x17, #0]
	cmp x19, x23
	b.eq #0xC
	ldr x21, [x20, #157]
	b #0x8
	ldr x29, [x29]
