	ldr x29, [x24,x14]
	ldr x20, [x27, #0]
	cmp x24, x20
	b.eq #0xC
	ldr x18, [x29, #123]
	b #0x8
	ldr x13, [x15]
