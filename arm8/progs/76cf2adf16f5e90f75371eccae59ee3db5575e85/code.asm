	ldr x22, [x11,x4]
	ldr x14, [x25, #0]
	cmp x11, x14
	b.eq #0xC
	ldr x27, [x22, #213]
	b #0x8
	ldr x0, [x13, #8]
