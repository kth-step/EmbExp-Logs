	ldr x18, [x0,x29]
	ldr x9, [x29, #0]
	cmp x0, x9
	b.eq #0xC
	ldr x21, [x18, #248]
	b #0x8
	ldr x28, [x26, #8]
