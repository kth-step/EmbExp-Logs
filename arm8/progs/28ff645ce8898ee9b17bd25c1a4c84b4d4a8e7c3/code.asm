	ldr x19, [x29,x12]
	ldr x26, [x22, #194]
	cmp x29, x26
	b.eq #0xC
	ldr x26, [x19, #156]
	b #0x8
	ldr x8, [x27]
