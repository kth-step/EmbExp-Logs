	ldr x14, [x26,x26]
	ldr x25, [x16, #0]
	cmp x26, x25
	b.eq #0xC
	ldr x18, [x14, #56]
	b #0x8
	ldr x6, [x12, #4]
