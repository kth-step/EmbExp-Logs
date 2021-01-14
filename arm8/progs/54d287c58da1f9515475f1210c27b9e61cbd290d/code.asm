	ldr x8, [x9,x7]
	ldr x21, [x5, #202]
	cmp x9, x21
	b.eq #0xC
	ldr x29, [x8, #40]
	b #0x8
	ldr x13, [x22, #4]
