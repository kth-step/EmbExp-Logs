	ldr x15, [x23,x4]
	ldr x22, [x14, #0]
	cmp x23, x22
	b.eq #0xC
	ldr x25, [x15, #175]
	b #0x8
	ldr x12, [x25]
