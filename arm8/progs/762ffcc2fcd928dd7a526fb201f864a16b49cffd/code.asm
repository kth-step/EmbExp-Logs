	ldr x13, [x18,x2]
	ldr x7, [x24, #161]
	cmp x18, x7
	b.eq #0xC
	ldr x15, [x13, #225]
	b #0x8
	ldr x26, [x12, #4]
