	ldr x27, [x24,x6]
	ldr x5, [x18, #124]
	cmp x24, x5
	b.eq #0xC
	ldr x3, [x27, #226]
	b #0x8
	ldr x27, [x28, #4]
