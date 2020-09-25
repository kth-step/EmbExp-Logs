	ldr x20, [x4,x17]
	ldr x18, [x23, #0]
	cmp x4, x18
	b.eq #0xC
	ldr x13, [x20, #109]
	b #0x8
	ldr x21, [x19, #16]
