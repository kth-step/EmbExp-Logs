	ldr x11, [x2,x12]
	ldr x2, [x0, #89]
	cmp x2, x2
	b.eq #0xC
	ldr x20, [x11, #8]
	b #0x8
	ldr x23, [x8]
