	ldr x11, [x19,x19]
	ldr x10, [x23, #93]
	cmp x19, x10
	b.eq #0xC
	ldr x29, [x11, #248]
	b #0x8
	ldr x24, [x14]
