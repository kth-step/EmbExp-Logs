	ldr x17, [x16,x27]
	ldr x4, [x22, #0]
	cmp x16, x4
	b.eq #0xC
	ldr x16, [x17, #213]
	b #0x8
	ldr x1, [x26, #8]
