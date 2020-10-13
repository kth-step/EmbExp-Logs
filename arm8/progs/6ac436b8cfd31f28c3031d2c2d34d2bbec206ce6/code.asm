	ldr x23, [x29,x2]
	ldr x25, [x12, #0]
	cmp x29, x25
	b.eq #0xC
	ldr x21, [x23, #200]
	b #0x8
	ldr x22, [x29]
