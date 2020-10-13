	ldr x22, [x21,x16]
	ldr x21, [x12, #0]
	cmp x21, x21
	b.eq #0xC
	ldr x9, [x22, #252]
	b #0x8
	ldr x14, [x28]
