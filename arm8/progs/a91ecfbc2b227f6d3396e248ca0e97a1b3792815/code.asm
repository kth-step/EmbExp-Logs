	ldr x9, [x15,x25]
	ldr x25, [x13, #212]
	cmp x15, x25
	b.eq #0xC
	ldr x6, [x9, #224]
	b #0x8
	ldr x24, [x3, #16]
