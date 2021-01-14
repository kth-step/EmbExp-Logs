	ldr x20, [x28,x10]
	ldr x25, [x4, #166]
	cmp x28, x25
	b.eq #0xC
	ldr x18, [x20, #180]
	b #0x8
	ldr x6, [x3, #16]
