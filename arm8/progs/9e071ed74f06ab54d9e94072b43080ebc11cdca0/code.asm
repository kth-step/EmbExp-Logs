	ldr x21, [x29,x24]
	ldr x25, [x22, #0]
	cmp x29, x25
	b.eq #0xC
	ldr x26, [x21, #227]
	b #0x8
	ldr x0, [x6, #16]
