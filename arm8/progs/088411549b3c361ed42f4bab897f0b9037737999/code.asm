	ldr x8, [x24,x11]
	ldr x28, [x12, #0]
	cmp x24, x28
	b.eq #0xC
	ldr x19, [x8, #241]
	b #0x8
	ldr x5, [x3, #8]
