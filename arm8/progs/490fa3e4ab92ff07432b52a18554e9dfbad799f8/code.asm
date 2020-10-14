	ldr x24, [x10,x14]
	ldr x17, [x26, #0]
	cmp x10, x17
	b.eq #0xC
	ldr x22, [x24, #55]
	b #0x8
	ldr x21, [x22, #4]
