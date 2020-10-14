	ldr x22, [x6,x16]
	ldr x18, [x12, #0]
	cmp x6, x18
	b.eq #0xC
	ldr x18, [x22, #70]
	b #0x8
	ldr x18, [x8]
