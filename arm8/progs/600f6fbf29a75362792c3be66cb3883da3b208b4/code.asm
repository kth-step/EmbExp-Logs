	ldr x13, [x15,x14]
	ldr x14, [x19, #64]
	cmp x15, x14
	b.eq #0xC
	ldr x27, [x13, #83]
	b #0x8
	ldr x22, [x26, #16]
