	ldr x14, [x25,x22]
	ldr x17, [x22, #0]
	cmp x25, x17
	b.eq #0xC
	ldr x12, [x14, #152]
	b #0x8
	ldr x23, [x18, #8]
