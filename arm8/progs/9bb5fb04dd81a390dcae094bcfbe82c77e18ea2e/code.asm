	ldr x26, [x21,x7]
	ldr x17, [x29, #39]
	cmp x21, x17
	b.eq #0xC
	ldr x8, [x26, #60]
	b #0x8
	ldr x8, [x12]
