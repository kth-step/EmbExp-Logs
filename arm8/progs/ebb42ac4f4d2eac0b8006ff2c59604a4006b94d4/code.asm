	ldr x24, [x21,x0]
	ldr x14, [x29, #186]
	cmp x21, x14
	b.eq #0xC
	ldr x3, [x24, #139]
	b #0x8
	ldr x25, [x28]
