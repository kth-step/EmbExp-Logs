	ldr x18, [x13,x28]
	ldr x7, [x27, #0]
	cmp x13, x7
	b.eq #0xC
	ldr x2, [x18, #160]
	b #0x8
	ldr x12, [x19, #8]
