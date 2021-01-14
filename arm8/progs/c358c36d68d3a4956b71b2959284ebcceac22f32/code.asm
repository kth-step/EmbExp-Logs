	ldr x23, [x8,x19]
	ldr x7, [x16, #224]
	cmp x8, x7
	b.eq #0xC
	ldr x0, [x23, #138]
	b #0x8
	ldr x24, [x13]
