	ldr x24, [x22,x4]
	ldr x29, [x27, #0]
	cmp x22, x29
	b.eq #0xC
	ldr x16, [x24, #250]
	b #0x8
	ldr x7, [x0, #16]
