	ldr x28, [x27,x18]
	ldr x8, [x16, #205]
	cmp x27, x8
	b.eq #0xC
	ldr x4, [x28, #160]
	b #0x8
	ldr x24, [x5, #4]
