	ldr x24, [x12,x18]
	ldr x11, [x20, #0]
	cmp x12, x11
	b.eq #0xC
	ldr x28, [x24, #39]
	b #0x8
	ldr x23, [x25]
