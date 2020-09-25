	ldr x22, [x16,x8]
	ldr x26, [x3, #0]
	cmp x16, x26
	b.eq #0xC
	ldr x10, [x22, #0]
	b #0x8
	ldr x18, [x28]
