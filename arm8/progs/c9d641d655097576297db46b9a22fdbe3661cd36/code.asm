	ldr x26, [x25,x16]
	ldr x22, [x15, #0]
	cmp x25, x22
	b.eq #0xC
	ldr x14, [x26, #175]
	b #0x8
	ldr x8, [x20]
