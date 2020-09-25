	ldr x15, [x6,x21]
	ldr x24, [x18, #0]
	cmp x6, x24
	b.eq #0xC
	ldr x21, [x15, #39]
	b #0x8
	ldr x23, [x14, #8]
