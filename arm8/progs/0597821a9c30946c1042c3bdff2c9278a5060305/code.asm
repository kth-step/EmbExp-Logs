	ldr x10, [x20,x9]
	ldr x7, [x5, #0]
	cmp x20, x7
	b.eq #0xC
	ldr x29, [x10, #203]
	b #0x8
	ldr x24, [x27]
