	ldr x10, [x25,x17]
	ldr x18, [x3, #0]
	cmp x25, x18
	b.eq #0xC
	ldr x4, [x10, #183]
	b #0x8
	ldr x3, [x14, #4]
