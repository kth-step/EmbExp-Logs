	ldr x10, [x18,x11]
	ldr x4, [x23, #0]
	cmp x18, x4
	b.eq #0xC
	ldr x15, [x10, #238]
	b #0x8
	ldr x12, [x21]
