	ldr x17, [x13,x2]
	ldr x14, [x27, #74]
	cmp x13, x14
	b.eq #0xC
	ldr x9, [x17, #128]
	b #0x8
	ldr x17, [x26, #8]
