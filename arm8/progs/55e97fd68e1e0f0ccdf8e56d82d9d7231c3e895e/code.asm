	ldr x8, [x28,x24]
	ldr x0, [x24, #253]
	cmp x28, x0
	b.eq #0xC
	ldr x28, [x8, #102]
	b #0x8
	ldr x29, [x21, #4]
