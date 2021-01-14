	ldr x18, [x16,x15]
	ldr x22, [x15, #197]
	cmp x16, x22
	b.eq #0xC
	ldr x23, [x18, #65]
	b #0x8
	ldr x7, [x9, #16]
