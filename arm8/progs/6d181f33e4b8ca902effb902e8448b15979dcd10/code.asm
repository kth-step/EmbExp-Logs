	ldr x25, [x26,x27]
	ldr x20, [x18, #0]
	cmp x26, x20
	b.eq #0xC
	ldr x28, [x25, #166]
	b #0x8
	ldr x10, [x21, #4]
