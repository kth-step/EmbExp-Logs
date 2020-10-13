	ldr x16, [x29,x25]
	ldr x21, [x14, #0]
	cmp x29, x21
	b.eq #0xC
	ldr x19, [x16, #113]
	b #0x8
	ldr x12, [x13]
