	ldr x23, [x3,x9]
	ldr x29, [x8, #0]
	cmp x3, x29
	b.eq #0xC
	ldr x18, [x23, #213]
	b #0x8
	ldr x29, [x13]
