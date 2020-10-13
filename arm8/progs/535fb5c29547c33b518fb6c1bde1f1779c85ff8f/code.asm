	ldr x22, [x21,x18]
	ldr x24, [x6, #0]
	cmp x21, x24
	b.eq #0xC
	ldr x18, [x22, #43]
	b #0x8
	ldr x4, [x27, #8]
