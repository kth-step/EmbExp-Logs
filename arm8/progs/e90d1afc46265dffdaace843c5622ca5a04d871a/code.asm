	ldr x21, [x4,x10]
	ldr x9, [x25, #206]
	cmp x4, x9
	b.eq #0xC
	ldr x10, [x21, #85]
	b #0x8
	ldr x4, [x14]
