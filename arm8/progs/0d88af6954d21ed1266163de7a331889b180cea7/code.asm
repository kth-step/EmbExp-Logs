	ldr x8, [x16,x25]
	ldr x12, [x27, #0]
	cmp x16, x12
	b.eq #0xC
	ldr x16, [x8, #82]
	b #0x8
	ldr x12, [x18, #8]
