	ldr x24, [x8,x8]
	ldr x19, [x24, #0]
	cmp x8, x19
	b.eq #0xC
	ldr x7, [x24, #251]
	b #0x8
	ldr x6, [x23]
