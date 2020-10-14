	ldr x23, [x1,x16]
	ldr x14, [x5, #0]
	cmp x1, x14
	b.eq #0xC
	ldr x18, [x23, #173]
	b #0x8
	ldr x12, [x16]
