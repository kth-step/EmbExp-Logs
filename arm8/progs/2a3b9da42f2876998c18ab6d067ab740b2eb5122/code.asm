	ldr x27, [x4,x22]
	ldr x20, [x24, #0]
	cmp x4, x20
	b.eq #0xC
	ldr x29, [x27, #20]
	b #0x8
	ldr x8, [x15, #8]
