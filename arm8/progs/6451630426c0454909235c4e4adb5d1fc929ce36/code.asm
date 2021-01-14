	ldr x10, [x25,x25]
	ldr x19, [x14, #99]
	cmp x25, x19
	b.eq #0xC
	ldr x29, [x10, #109]
	b #0x8
	ldr x9, [x15, #16]
