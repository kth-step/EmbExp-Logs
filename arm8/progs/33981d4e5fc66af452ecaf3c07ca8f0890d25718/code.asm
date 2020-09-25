	ldr x19, [x6,x25]
	ldr x3, [x25, #0]
	cmp x6, x3
	b.eq #0xC
	ldr x28, [x19, #196]
	b #0x8
	ldr x15, [x26, #4]
