	ldr x7, [x24,x12]
	ldr x26, [x7, #222]
	cmp x24, x26
	b.eq #0xC
	ldr x6, [x7, #82]
	b #0x8
	ldr x3, [x0, #16]
