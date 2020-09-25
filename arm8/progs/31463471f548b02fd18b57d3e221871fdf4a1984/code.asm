	ldr x6, [x27,x17]
	ldr x19, [x23, #0]
	cmp x27, x19
	b.eq #0xC
	ldr x4, [x6, #143]
	b #0x8
	ldr x3, [x8, #16]
