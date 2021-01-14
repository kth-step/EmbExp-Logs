	ldr x15, [x11,x8]
	ldr x24, [x8, #126]
	cmp x11, x24
	b.eq #0xC
	ldr x28, [x15, #242]
	b #0x8
	ldr x22, [x13]
