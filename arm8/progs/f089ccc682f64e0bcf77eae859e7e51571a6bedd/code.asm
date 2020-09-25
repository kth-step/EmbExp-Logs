	ldr x5, [x19,x1]
	ldr x20, [x25, #0]
	cmp x19, x20
	b.eq #0xC
	ldr x19, [x5, #254]
	b #0x8
	ldr x1, [x28]
