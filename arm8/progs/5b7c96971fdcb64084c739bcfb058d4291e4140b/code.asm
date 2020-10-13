	ldr x9, [x11,x12]
	ldr x1, [x22, #0]
	cmp x11, x1
	b.eq #0xC
	ldr x28, [x9, #82]
	b #0x8
	ldr x20, [x20]
