	ldr x8, [x4,x4]
	ldr x0, [x7, #191]
	cmp x4, x0
	b.eq #0xC
	ldr x0, [x8, #173]
	b #0x8
	ldr x15, [x27, #4]
