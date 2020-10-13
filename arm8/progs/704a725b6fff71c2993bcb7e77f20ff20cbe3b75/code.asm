	ldr x10, [x9,x19]
	ldr x23, [x10, #0]
	cmp x9, x23
	b.eq #0xC
	ldr x19, [x10, #216]
	b #0x8
	ldr x22, [x24]
