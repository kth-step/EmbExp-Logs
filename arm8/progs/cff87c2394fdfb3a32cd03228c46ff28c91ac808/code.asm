	ldr x10, [x28,x21]
	ldr x0, [x16, #238]
	cmp x28, x0
	b.eq #0xC
	ldr x6, [x10, #101]
	b #0x8
	ldr x24, [x24]
