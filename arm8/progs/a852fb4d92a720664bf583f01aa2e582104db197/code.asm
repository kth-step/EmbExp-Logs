	ldr x25, [x6,x13]
	ldr x24, [x20, #0]
	cmp x6, x24
	b.eq #0xC
	ldr x15, [x25, #237]
	b #0x8
	ldr x9, [x15]
