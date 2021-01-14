	ldr x9, [x29,x17]
	ldr x12, [x16, #115]
	cmp x29, x12
	b.eq #0xC
	ldr x4, [x9, #22]
	b #0x8
	ldr x8, [x29]
