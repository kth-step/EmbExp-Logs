	ldr x11, [x16,x17]
	ldr x10, [x13, #0]
	cmp x16, x10
	b.eq #0xC
	ldr x21, [x11, #213]
	b #0x8
	ldr x12, [x8]
