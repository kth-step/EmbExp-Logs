	ldr x17, [x21,x22]
	ldr x5, [x26, #0]
	cmp x21, x5
	b.eq #0xC
	ldr x24, [x17, #214]
	b #0x8
	ldr x4, [x8]
