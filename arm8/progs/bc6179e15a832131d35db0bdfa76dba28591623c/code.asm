	ldr x29, [x4,x18]
	ldr x18, [x20, #220]
	cmp x4, x18
	b.eq #0xC
	ldr x4, [x29, #117]
	b #0x8
	ldr x14, [x25, #16]
