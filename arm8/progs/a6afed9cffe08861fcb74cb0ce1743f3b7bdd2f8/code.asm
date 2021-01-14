	ldr x9, [x4,x16]
	ldr x8, [x19, #135]
	cmp x4, x8
	b.eq #0xC
	ldr x22, [x9, #88]
	b #0x8
	ldr x19, [x21, #16]
