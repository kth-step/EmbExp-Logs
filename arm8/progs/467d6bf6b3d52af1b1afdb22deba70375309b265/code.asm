	ldr x24, [x4,x8]
	ldr x19, [x3, #201]
	cmp x4, x19
	b.eq #0xC
	ldr x5, [x24, #243]
	b #0x8
	ldr x24, [x8, #16]
