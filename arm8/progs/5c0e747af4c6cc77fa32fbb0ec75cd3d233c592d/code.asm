	ldr x28, [x21,x17]
	ldr x7, [x17, #0]
	cmp x21, x7
	b.eq #0xC
	ldr x27, [x28, #29]
	b #0x8
	ldr x24, [x20, #8]
