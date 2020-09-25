	ldr x12, [x14,x3]
	ldr x10, [x14, #0]
	cmp x14, x10
	b.eq #0xC
	ldr x21, [x12, #238]
	b #0x8
	ldr x24, [x25, #16]
