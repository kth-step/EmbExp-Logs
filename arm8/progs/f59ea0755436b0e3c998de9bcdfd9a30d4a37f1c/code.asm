	ldr x22, [x18,x1]
	ldr x27, [x3, #0]
	cmp x18, x27
	b.eq #0xC
	ldr x24, [x22, #124]
	b #0x8
	ldr x20, [x26, #4]
