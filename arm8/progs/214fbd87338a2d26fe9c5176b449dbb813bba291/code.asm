	ldr x25, [x4,x4]
	ldr x8, [x29, #0]
	cmp x4, x8
	b.eq #0xC
	ldr x5, [x25, #164]
	b #0x8
	ldr x22, [x28]
