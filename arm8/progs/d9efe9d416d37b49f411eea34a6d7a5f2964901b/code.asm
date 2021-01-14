	ldr x25, [x10,x19]
	ldr x17, [x25, #9]
	cmp x10, x17
	b.eq #0xC
	ldr x28, [x25, #102]
	b #0x8
	ldr x16, [x3, #16]
