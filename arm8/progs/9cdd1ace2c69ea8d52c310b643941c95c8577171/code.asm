	ldr x23, [x7,x20]
	ldr x22, [x7, #0]
	cmp x7, x22
	b.eq #0xC
	ldr x28, [x23, #154]
	b #0x8
	ldr x9, [x0]
