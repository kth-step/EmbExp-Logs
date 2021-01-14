	ldr x3, [x15,x4]
	ldr x26, [x7, #205]
	cmp x15, x26
	b.eq #0xC
	ldr x5, [x3, #89]
	b #0x8
	ldr x16, [x9]
