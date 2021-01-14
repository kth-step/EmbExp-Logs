	ldr x27, [x2,x24]
	ldr x8, [x20, #85]
	cmp x2, x8
	b.eq #0xC
	ldr x14, [x27, #241]
	b #0x8
	ldr x4, [x23, #4]
