	ldr x23, [x14,x16]
	ldr x10, [x6, #0]
	cmp x14, x10
	b.eq #0xC
	ldr x24, [x23, #82]
	b #0x8
	ldr x28, [x23]
