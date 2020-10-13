	ldr x20, [x15,x10]
	ldr x15, [x29, #0]
	cmp x15, x15
	b.eq #0xC
	ldr x24, [x20, #208]
	b #0x8
	ldr x18, [x5, #16]
