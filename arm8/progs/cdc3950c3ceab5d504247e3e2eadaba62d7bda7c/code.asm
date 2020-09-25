	ldr x24, [x5,x29]
	ldr x19, [x12, #0]
	cmp x5, x19
	b.eq #0xC
	ldr x21, [x24, #118]
	b #0x8
	ldr x27, [x26, #8]
