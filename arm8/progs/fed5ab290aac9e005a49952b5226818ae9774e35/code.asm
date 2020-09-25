	ldr x12, [x15,x2]
	ldr x19, [x8, #0]
	cmp x15, x19
	b.eq #0xC
	ldr x22, [x12, #82]
	b #0x8
	ldr x26, [x29, #8]
