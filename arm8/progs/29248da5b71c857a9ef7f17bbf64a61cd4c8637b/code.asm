	ldr x5, [x2,x14]
	ldr x12, [x2, #217]
	cmp x2, x12
	b.eq #0xC
	ldr x29, [x5, #191]
	b #0x8
	ldr x9, [x28]
