	ldr x18, [x17,x26]
	ldr x0, [x26, #0]
	cmp x17, x0
	b.eq #0xC
	ldr x22, [x18, #86]
	b #0x8
	ldr x19, [x8]
