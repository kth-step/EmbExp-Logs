	ldr x17, [x29,x24]
	ldr x24, [x4, #104]
	cmp x29, x24
	b.eq #0xC
	ldr x29, [x17, #173]
	b #0x8
	ldr x22, [x4, #4]
