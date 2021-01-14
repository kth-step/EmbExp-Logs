	ldr x22, [x20,x5]
	ldr x2, [x20, #29]
	cmp x20, x2
	b.eq #0xC
	ldr x3, [x22, #249]
	b #0x8
	ldr x0, [x23, #4]
