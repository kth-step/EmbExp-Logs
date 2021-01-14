	ldr x17, [x21,x25]
	ldr x8, [x24, #158]
	cmp x21, x8
	b.eq #0xC
	ldr x21, [x17, #53]
	b #0x8
	ldr x8, [x14]
