	ldr x12, [x27,x19]
	ldr x9, [x28, #0]
	cmp x27, x9
	b.eq #0xC
	ldr x22, [x12, #227]
	b #0x8
	ldr x26, [x29]
