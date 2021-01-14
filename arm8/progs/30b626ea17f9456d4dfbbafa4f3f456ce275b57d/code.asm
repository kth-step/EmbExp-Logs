	ldr x21, [x16,x18]
	ldr x23, [x14, #39]
	cmp x16, x23
	b.eq #0xC
	ldr x10, [x21, #204]
	b #0x8
	ldr x22, [x12, #16]
