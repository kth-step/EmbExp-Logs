	ldr x18, [x11,x22]
	ldr x28, [x14, #133]
	cmp x11, x28
	b.eq #0xC
	ldr x23, [x18, #205]
	b #0x8
	ldr x6, [x28, #8]
