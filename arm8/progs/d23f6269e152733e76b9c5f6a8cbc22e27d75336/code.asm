	ldr x24, [x27,x2]
	ldr x18, [x29, #0]
	cmp x27, x18
	b.eq #0xC
	ldr x18, [x24, #72]
	b #0x8
	ldr x20, [x0]
