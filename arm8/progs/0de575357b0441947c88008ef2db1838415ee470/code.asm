	ldr x8, [x19,x19]
	ldr x22, [x17, #0]
	cmp x19, x22
	b.eq #0xC
	ldr x14, [x8, #5]
	b #0x8
	ldr x18, [x23, #4]
