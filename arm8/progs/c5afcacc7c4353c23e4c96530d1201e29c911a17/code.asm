	ldr x17, [x14,x1]
	ldr x25, [x5, #0]
	cmp x14, x25
	b.eq #0xC
	ldr x10, [x17, #118]
	b #0x8
	ldr x22, [x24, #4]
