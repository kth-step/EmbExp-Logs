	ldr x27, [x5,x15]
	ldr x18, [x11, #16]
	cmp x5, x18
	b.eq #0xC
	ldr x8, [x27, #213]
	b #0x8
	ldr x6, [x25]
