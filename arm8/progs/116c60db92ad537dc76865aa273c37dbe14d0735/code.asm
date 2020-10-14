	ldr x16, [x11,x24]
	ldr x28, [x4, #0]
	cmp x11, x28
	b.eq #0xC
	ldr x4, [x16, #82]
	b #0x8
	ldr x6, [x23, #16]
