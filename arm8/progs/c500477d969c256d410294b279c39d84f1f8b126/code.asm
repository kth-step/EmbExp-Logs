	ldr x26, [x21,x4]
	ldr x0, [x19, #213]
	cmp x21, x0
	b.eq #0xC
	ldr x22, [x26, #194]
	b #0x8
	ldr x6, [x14, #4]
