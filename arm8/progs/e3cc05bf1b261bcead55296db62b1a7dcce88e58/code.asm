	ldr x27, [x0,x12]
	ldr x3, [x21, #0]
	cmp x0, x3
	b.eq #0xC
	ldr x15, [x27, #118]
	b #0x8
	ldr x5, [x27]
