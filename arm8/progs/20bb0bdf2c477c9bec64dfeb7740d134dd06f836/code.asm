	ldr x12, [x2,x21]
	ldr x4, [x25, #21]
	cmp x2, x4
	b.eq #0xC
	ldr x3, [x12, #118]
	b #0x8
	ldr x20, [x28]
