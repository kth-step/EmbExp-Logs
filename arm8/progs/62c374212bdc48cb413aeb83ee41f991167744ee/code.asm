	ldr x24, [x21,x8]
	ldr x5, [x18, #66]
	cmp x21, x5
	b.eq #0xC
	ldr x20, [x24, #211]
	b #0x8
	ldr x17, [x25]
