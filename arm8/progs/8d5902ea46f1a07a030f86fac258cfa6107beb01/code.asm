	ldr x29, [x12,x19]
	ldr x26, [x7, #0]
	cmp x12, x26
	b.eq #0xC
	ldr x8, [x29, #16]
	b #0x8
	ldr x22, [x20, #16]
