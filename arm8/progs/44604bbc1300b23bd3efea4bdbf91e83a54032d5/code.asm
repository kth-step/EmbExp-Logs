	ldr x9, [x22,x20]
	ldr x25, [x12, #117]
	cmp x22, x25
	b.eq #0xC
	ldr x22, [x9, #143]
	b #0x8
	ldr x9, [x13]
