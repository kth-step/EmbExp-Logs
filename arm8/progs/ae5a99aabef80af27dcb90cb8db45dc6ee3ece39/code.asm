	ldr x9, [x8,x14]
	ldr x18, [x6, #0]
	cmp x8, x18
	b.eq #0xC
	ldr x26, [x9, #42]
	b #0x8
	ldr x8, [x21]
