	ldr x7, [x16,x18]
	ldr x16, [x13, #0]
	cmp x16, x16
	b.eq #0xC
	ldr x4, [x7, #213]
	b #0x8
	ldr x10, [x18]
