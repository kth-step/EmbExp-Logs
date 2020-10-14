	ldr x2, [x18,x26]
	ldr x25, [x20, #0]
	cmp x18, x25
	b.eq #0xC
	ldr x13, [x2, #44]
	b #0x8
	ldr x4, [x26]
