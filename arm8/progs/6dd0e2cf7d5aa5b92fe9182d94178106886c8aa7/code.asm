	ldr x5, [x20,x1]
	ldr x15, [x9, #0]
	cmp x20, x15
	b.eq #0xC
	ldr x8, [x5, #213]
	b #0x8
	ldr x20, [x20]
