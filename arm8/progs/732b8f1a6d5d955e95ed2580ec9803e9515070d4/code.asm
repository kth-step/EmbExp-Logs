	ldr x16, [x8,x26]
	ldr x18, [x29, #236]
	cmp x8, x18
	b.eq #0xC
	ldr x25, [x16, #129]
	b #0x8
	ldr x14, [x25, #8]
