	ldr x24, [x20,x16]
	ldr x7, [x23, #0]
	cmp x20, x7
	b.eq #0xC
	ldr x19, [x24, #118]
	b #0x8
	ldr x26, [x25, #8]
