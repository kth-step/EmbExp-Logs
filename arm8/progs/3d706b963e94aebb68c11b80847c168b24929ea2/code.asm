	ldr x14, [x8,x8]
	ldr x26, [x29, #0]
	cmp x8, x26
	b.eq #0xC
	ldr x9, [x14, #158]
	b #0x8
	ldr x14, [x15]
