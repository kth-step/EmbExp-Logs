	ldr x21, [x10,x14]
	ldr x0, [x6, #203]
	cmp x10, x0
	b.eq #0xC
	ldr x25, [x21, #4]
	b #0x8
	ldr x18, [x4, #8]
