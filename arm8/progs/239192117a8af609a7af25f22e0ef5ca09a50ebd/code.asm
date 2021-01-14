	ldr x12, [x26,x22]
	ldr x25, [x27, #233]
	cmp x26, x25
	b.eq #0xC
	ldr x9, [x12, #199]
	b #0x8
	ldr x5, [x2, #16]
