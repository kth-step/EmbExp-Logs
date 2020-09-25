	ldr x13, [x19,x2]
	ldr x29, [x12, #0]
	cmp x19, x29
	b.eq #0xC
	ldr x7, [x13, #73]
	b #0x8
	ldr x26, [x2]
