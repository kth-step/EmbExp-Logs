	ldr x3, [x24,x5]
	ldr x25, [x5, #196]
	cmp x24, x25
	b.eq #0xC
	ldr x9, [x3, #11]
	b #0x8
	ldr x22, [x2, #8]
