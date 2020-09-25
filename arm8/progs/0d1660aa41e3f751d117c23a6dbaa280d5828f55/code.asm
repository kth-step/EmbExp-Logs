	ldr x22, [x10,x28]
	ldr x2, [x0, #0]
	cmp x10, x2
	b.eq #0xC
	ldr x7, [x22, #191]
	b #0x8
	ldr x24, [x22, #16]
