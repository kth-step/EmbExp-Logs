	ldr x9, [x28,x20]
	ldr x13, [x24, #221]
	cmp x28, x13
	b.eq #0xC
	ldr x26, [x9, #242]
	b #0x8
	ldr x24, [x2]
