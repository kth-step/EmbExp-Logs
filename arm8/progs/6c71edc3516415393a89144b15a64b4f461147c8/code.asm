	ldr x27, [x28,x10]
	ldr x22, [x29, #0]
	cmp x28, x22
	b.eq #0xC
	ldr x20, [x27, #61]
	b #0x8
	ldr x24, [x3, #16]
