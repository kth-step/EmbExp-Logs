	ldr x18, [x12,x10]
	ldr x24, [x22, #0]
	cmp x12, x24
	b.eq #0xC
	ldr x2, [x18, #233]
	b #0x8
	ldr x14, [x7]
