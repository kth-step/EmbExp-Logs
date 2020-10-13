	ldr x20, [x27,x10]
	ldr x29, [x14, #0]
	cmp x27, x29
	b.eq #0xC
	ldr x18, [x20, #35]
	b #0x8
	ldr x14, [x22, #16]
