	ldr x14, [x15,x5]
	ldr x25, [x24, #196]
	cmp x15, x25
	b.eq #0xC
	ldr x0, [x14, #212]
	b #0x8
	ldr x28, [x17, #4]
