	ldr x5, [x27,x29]
	ldr x12, [x2, #0]
	cmp x27, x12
	b.eq #0xC
	ldr x28, [x5, #161]
	b #0x8
	ldr x23, [x28, #4]
