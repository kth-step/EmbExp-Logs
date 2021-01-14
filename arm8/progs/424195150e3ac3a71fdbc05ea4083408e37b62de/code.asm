	ldr x22, [x20,x19]
	ldr x19, [x10, #175]
	cmp x20, x19
	b.eq #0xC
	ldr x16, [x22, #181]
	b #0x8
	ldr x14, [x0]
