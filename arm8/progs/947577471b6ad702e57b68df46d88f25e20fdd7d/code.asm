	ldr x8, [x4,x3]
	ldr x5, [x19, #0]
	cmp x4, x5
	b.eq #0xC
	ldr x9, [x8, #196]
	b #0x8
	ldr x25, [x24, #8]
