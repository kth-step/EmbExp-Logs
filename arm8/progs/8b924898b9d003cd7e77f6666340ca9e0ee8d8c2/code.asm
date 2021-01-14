	ldr x6, [x8,x14]
	ldr x0, [x14, #139]
	cmp x8, x0
	b.eq #0xC
	ldr x21, [x6, #213]
	b #0x8
	ldr x12, [x1, #8]
