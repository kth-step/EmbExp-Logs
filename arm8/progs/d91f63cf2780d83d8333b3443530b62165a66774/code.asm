	ldr x25, [x22,x24]
	ldr x10, [x8, #212]
	cmp x22, x10
	b.eq #0xC
	ldr x3, [x25, #4]
	b #0x8
	ldr x0, [x10]
