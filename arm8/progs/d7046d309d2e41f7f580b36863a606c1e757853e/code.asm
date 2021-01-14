	ldr x29, [x17,x26]
	ldr x19, [x15, #95]
	cmp x17, x19
	b.eq #0xC
	ldr x6, [x29, #56]
	b #0x8
	ldr x6, [x10]
