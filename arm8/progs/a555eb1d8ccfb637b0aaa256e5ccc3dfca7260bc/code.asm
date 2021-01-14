	ldr x22, [x3,x19]
	ldr x23, [x9, #106]
	cmp x3, x23
	b.eq #0xC
	ldr x17, [x22, #99]
	b #0x8
	ldr x10, [x29, #4]
