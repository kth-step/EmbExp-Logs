	ldr x23, [x10,x20]
	ldr x8, [x6, #135]
	cmp x10, x8
	b.eq #0xC
	ldr x10, [x23, #152]
	b #0x8
	ldr x22, [x26, #16]
