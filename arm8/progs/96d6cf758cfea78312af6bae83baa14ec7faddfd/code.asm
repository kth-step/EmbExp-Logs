	ldr x24, [x2,x26]
	ldr x21, [x4, #72]
	cmp x2, x21
	b.eq #0xC
	ldr x17, [x24, #148]
	b #0x8
	ldr x29, [x25, #4]
