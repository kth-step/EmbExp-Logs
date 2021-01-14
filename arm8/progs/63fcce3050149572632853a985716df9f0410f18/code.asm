	ldr x17, [x19,x9]
	ldr x13, [x26, #176]
	cmp x19, x13
	b.eq #0xC
	ldr x1, [x17, #151]
	b #0x8
	ldr x12, [x6, #16]
