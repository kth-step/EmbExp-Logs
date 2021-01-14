	ldr x6, [x27,x28]
	ldr x2, [x7, #173]
	cmp x27, x2
	b.eq #0xC
	ldr x12, [x6, #154]
	b #0x8
	ldr x24, [x20, #4]
