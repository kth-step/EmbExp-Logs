	ldr x20, [x10,x16]
	ldr x2, [x18, #0]
	cmp x10, x2
	b.eq #0xC
	ldr x9, [x20, #78]
	b #0x8
	ldr x17, [x10]
