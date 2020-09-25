	ldr x17, [x26,x3]
	ldr x19, [x7, #0]
	cmp x26, x19
	b.eq #0xC
	ldr x22, [x17, #143]
	b #0x8
	ldr x13, [x17]
