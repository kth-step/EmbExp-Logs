	ldr x18, [x29,x13]
	ldr x9, [x26, #0]
	cmp x29, x9
	b.eq #0xC
	ldr x7, [x18, #157]
	b #0x8
	ldr x26, [x7, #16]
