	ldr x7, [x11,x16]
	ldr x6, [x11, #174]
	cmp x11, x6
	b.eq #0xC
	ldr x17, [x7, #213]
	b #0x8
	ldr x11, [x28, #16]
