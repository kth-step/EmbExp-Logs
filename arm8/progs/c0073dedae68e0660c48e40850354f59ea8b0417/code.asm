	ldr x8, [x13,x9]
	ldr x26, [x6, #8]
	cmp x13, x26
	b.eq #0xC
	ldr x27, [x8, #128]
	b #0x8
	ldr x8, [x6, #16]
