	ldr x13, [x9,x9]
	ldr x6, [x19, #0]
	cmp x9, x6
	b.eq #0xC
	ldr x19, [x13, #56]
	b #0x8
	ldr x4, [x26]
