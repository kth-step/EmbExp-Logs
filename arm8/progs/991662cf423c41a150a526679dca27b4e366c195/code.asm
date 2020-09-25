	ldr x25, [x17,x11]
	ldr x23, [x27, #0]
	cmp x17, x23
	b.eq #0xC
	ldr x28, [x25, #140]
	b #0x8
	ldr x28, [x12]
