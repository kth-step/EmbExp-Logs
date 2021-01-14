	ldr x9, [x26,x4]
	ldr x27, [x3, #163]
	cmp x26, x27
	b.eq #0xC
	ldr x18, [x9, #93]
	b #0x8
	ldr x22, [x4, #16]
