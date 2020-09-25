	ldr x16, [x23,x21]
	ldr x8, [x29, #0]
	cmp x23, x8
	b.eq #0xC
	ldr x27, [x16, #62]
	b #0x8
	ldr x21, [x24, #4]
