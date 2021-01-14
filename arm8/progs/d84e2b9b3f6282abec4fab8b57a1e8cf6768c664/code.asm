	ldr x26, [x14,x6]
	ldr x9, [x12, #29]
	cmp x14, x9
	b.eq #0xC
	ldr x8, [x26, #220]
	b #0x8
	ldr x27, [x24]
