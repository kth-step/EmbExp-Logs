	ldr x26, [x21,x17]
	ldr x18, [x24, #227]
	cmp x21, x18
	b.eq #0xC
	ldr x0, [x26, #244]
	b #0x8
	ldr x20, [x24, #8]
