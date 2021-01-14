	ldr x13, [x7,x3]
	ldr x5, [x23, #216]
	cmp x7, x5
	b.eq #0xC
	ldr x18, [x13, #56]
	b #0x8
	ldr x22, [x17]
