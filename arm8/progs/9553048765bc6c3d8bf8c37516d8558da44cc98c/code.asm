	ldr x28, [x26,x17]
	ldr x9, [x11, #254]
	cmp x26, x9
	b.eq #0xC
	ldr x25, [x28, #88]
	b #0x8
	ldr x21, [x4, #16]
