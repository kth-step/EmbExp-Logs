	ldr x22, [x26,x4]
	ldr x23, [x29, #4]
	cmp x26, x23
	b.eq #0xC
	ldr x26, [x22, #236]
	b #0x8
	ldr x15, [x18, #16]
