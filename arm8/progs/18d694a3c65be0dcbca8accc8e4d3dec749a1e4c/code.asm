	ldr x3, [x4,x22]
	ldr x7, [x9, #191]
	cmp x4, x7
	b.eq #0xC
	ldr x13, [x3, #89]
	b #0x8
	ldr x22, [x11, #16]
