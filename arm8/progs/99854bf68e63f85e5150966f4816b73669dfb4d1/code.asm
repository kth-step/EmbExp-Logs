	ldr x25, [x20,x26]
	ldr x0, [x24, #0]
	cmp x20, x0
	b.eq #0xC
	ldr x15, [x25, #201]
	b #0x8
	ldr x0, [x5]
