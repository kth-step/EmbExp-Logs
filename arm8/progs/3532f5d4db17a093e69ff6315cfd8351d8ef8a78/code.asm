	ldr x29, [x15,x20]
	ldr x4, [x25, #0]
	cmp x15, x4
	b.eq #0xC
	ldr x25, [x29, #157]
	b #0x8
	ldr x10, [x0]
