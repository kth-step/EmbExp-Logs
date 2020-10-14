	ldr x25, [x18,x20]
	ldr x14, [x27, #0]
	cmp x18, x14
	b.eq #0xC
	ldr x8, [x25, #10]
	b #0x8
	ldr x26, [x21]
