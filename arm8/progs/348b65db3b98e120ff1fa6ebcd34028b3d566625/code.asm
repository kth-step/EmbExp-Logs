	ldr x24, [x5,x27]
	ldr x14, [x16, #0]
	cmp x5, x14
	b.eq #0xC
	ldr x17, [x24, #12]
	b #0x8
	ldr x25, [x27]
