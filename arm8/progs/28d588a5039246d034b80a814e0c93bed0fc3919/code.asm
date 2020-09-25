	ldr x18, [x12,x22]
	ldr x16, [x26, #0]
	cmp x12, x16
	b.eq #0xC
	ldr x8, [x18, #79]
	b #0x8
	ldr x3, [x24]
