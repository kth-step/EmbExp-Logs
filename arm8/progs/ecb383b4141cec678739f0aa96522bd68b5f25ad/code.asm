	ldr x21, [x7,x25]
	ldr x6, [x24, #0]
	cmp x7, x6
	b.eq #0xC
	ldr x23, [x21, #71]
	b #0x8
	ldr x25, [x27]
