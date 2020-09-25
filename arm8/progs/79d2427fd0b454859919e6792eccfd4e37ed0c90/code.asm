	ldr x21, [x14,x12]
	ldr x20, [x0, #0]
	cmp x14, x20
	b.eq #0xC
	ldr x2, [x21, #171]
	b #0x8
	ldr x27, [x8, #8]
