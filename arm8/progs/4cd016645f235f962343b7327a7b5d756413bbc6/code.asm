	ldr x25, [x26,x13]
	ldr x12, [x5, #30]
	cmp x26, x12
	b.eq #0xC
	ldr x26, [x25, #66]
	b #0x8
	ldr x29, [x8]
