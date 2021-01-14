	ldr x24, [x9,x2]
	ldr x8, [x12, #222]
	cmp x9, x8
	b.eq #0xC
	ldr x26, [x24, #85]
	b #0x8
	ldr x12, [x25]
