	ldr x19, [x5,x2]
	ldr x26, [x14, #0]
	cmp x5, x26
	b.eq #0xC
	ldr x18, [x19, #156]
	b #0x8
	ldr x25, [x26]
