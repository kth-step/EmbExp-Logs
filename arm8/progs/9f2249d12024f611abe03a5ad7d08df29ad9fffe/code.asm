	ldr x4, [x24,x22]
	ldr x18, [x2, #0]
	cmp x24, x18
	b.eq #0xC
	ldr x29, [x4, #130]
	b #0x8
	ldr x29, [x21]
