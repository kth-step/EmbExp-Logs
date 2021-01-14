	ldr x23, [x10,x26]
	ldr x18, [x28, #198]
	cmp x10, x18
	b.eq #0xC
	ldr x20, [x23, #74]
	b #0x8
	ldr x3, [x15]
