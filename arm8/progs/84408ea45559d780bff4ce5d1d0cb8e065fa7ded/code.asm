	ldr x19, [x28,x1]
	ldr x28, [x19, #191]
	cmp x28, x28
	b.eq #0xC
	ldr x21, [x19, #65]
	b #0x8
	ldr x2, [x25]
