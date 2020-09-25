	ldr x16, [x9,x28]
	ldr x18, [x16, #0]
	cmp x9, x18
	b.eq #0xC
	ldr x8, [x16, #82]
	b #0x8
	ldr x24, [x22, #8]
