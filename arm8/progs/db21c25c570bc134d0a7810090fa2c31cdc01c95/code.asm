	ldr x23, [x22,x3]
	ldr x12, [x22, #0]
	cmp x22, x12
	b.eq #0xC
	ldr x26, [x23, #154]
	b #0x8
	ldr x24, [x27]
