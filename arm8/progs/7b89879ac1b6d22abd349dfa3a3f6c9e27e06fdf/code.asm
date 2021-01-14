	ldr x14, [x7,x12]
	ldr x29, [x18, #146]
	cmp x7, x29
	b.eq #0xC
	ldr x29, [x14, #121]
	b #0x8
	ldr x22, [x12]
