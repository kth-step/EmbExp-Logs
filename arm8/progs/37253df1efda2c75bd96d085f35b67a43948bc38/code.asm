	ldr x25, [x0,x10]
	ldr x24, [x28, #0]
	cmp x0, x24
	b.eq #0xC
	ldr x5, [x25, #224]
	b #0x8
	ldr x1, [x18, #16]
