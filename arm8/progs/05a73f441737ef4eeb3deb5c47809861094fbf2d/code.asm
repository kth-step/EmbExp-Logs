	ldr x10, [x12,x17]
	ldr x25, [x3, #0]
	cmp x12, x25
	b.eq #0xC
	ldr x16, [x10, #65]
	b #0x8
	ldr x22, [x9, #16]
