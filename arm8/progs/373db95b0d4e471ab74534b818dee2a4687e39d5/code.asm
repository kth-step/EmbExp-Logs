	ldr x29, [x5,x28]
	ldr x4, [x24, #161]
	cmp x5, x4
	b.eq #0xC
	ldr x12, [x29, #84]
	b #0x8
	ldr x8, [x5]
