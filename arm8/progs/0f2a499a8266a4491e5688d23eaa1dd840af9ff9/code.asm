	ldr x24, [x28,x20]
	ldr x29, [x18, #0]
	cmp x28, x29
	b.eq #0xC
	ldr x14, [x24, #238]
	b #0x8
	ldr x20, [x21, #16]
