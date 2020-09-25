	ldr x16, [x25,x17]
	ldr x9, [x4, #0]
	cmp x25, x9
	b.eq #0xC
	ldr x20, [x16, #220]
	b #0x8
	ldr x9, [x13]
