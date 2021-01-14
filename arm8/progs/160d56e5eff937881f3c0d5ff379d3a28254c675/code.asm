	ldr x2, [x27,x12]
	ldr x19, [x29, #59]
	cmp x27, x19
	b.eq #0xC
	ldr x5, [x2, #205]
	b #0x8
	ldr x17, [x8, #8]
