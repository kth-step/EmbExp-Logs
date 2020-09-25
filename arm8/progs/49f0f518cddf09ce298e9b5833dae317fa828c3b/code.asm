	ldr x19, [x8,x4]
	ldr x3, [x4, #0]
	cmp x8, x3
	b.eq #0xC
	ldr x2, [x19, #118]
	b #0x8
	ldr x24, [x18, #8]
