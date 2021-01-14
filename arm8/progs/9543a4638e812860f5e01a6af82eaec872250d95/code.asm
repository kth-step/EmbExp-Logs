	ldr x24, [x22,x0]
	ldr x27, [x18, #13]
	cmp x22, x27
	b.eq #0xC
	ldr x6, [x24, #146]
	b #0x8
	ldr x16, [x28]
