	ldr x2, [x14,x22]
	ldr x25, [x4, #0]
	cmp x14, x25
	b.eq #0xC
	ldr x20, [x2, #55]
	b #0x8
	ldr x18, [x17, #8]
