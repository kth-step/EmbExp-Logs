	ldr x4, [x8,x20]
	ldr x3, [x6, #0]
	cmp x8, x3
	b.eq #0xC
	ldr x19, [x4, #39]
	b #0x8
	ldr x18, [x5, #4]
