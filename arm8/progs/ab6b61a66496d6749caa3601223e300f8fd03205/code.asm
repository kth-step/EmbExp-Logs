	ldr x16, [x12,x25]
	ldr x21, [x10, #0]
	cmp x12, x21
	b.eq #0xC
	ldr x18, [x16, #221]
	b #0x8
	ldr x21, [x15]
