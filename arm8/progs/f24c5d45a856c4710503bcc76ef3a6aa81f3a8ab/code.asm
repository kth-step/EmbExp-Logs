	ldr x12, [x9,x22]
	ldr x28, [x19, #48]
	cmp x9, x28
	b.eq #0xC
	ldr x27, [x12, #65]
	b #0x8
	ldr x2, [x22, #4]
