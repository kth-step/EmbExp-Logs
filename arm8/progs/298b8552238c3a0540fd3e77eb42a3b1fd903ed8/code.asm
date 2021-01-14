	ldr x9, [x14,x10]
	ldr x18, [x11, #37]
	cmp x14, x18
	b.eq #0xC
	ldr x27, [x9, #175]
	b #0x8
	ldr x29, [x10]
