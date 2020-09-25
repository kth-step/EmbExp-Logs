	ldr x27, [x22,x29]
	ldr x18, [x11, #0]
	cmp x22, x18
	b.eq #0xC
	ldr x24, [x27, #206]
	b #0x8
	ldr x18, [x20]
