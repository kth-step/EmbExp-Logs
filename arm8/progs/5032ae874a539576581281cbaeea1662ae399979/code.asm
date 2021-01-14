	ldr x17, [x11,x24]
	ldr x23, [x19, #244]
	cmp x11, x23
	b.eq #0xC
	ldr x14, [x17, #103]
	b #0x8
	ldr x21, [x16]
