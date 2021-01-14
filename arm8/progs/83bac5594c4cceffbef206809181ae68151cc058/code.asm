	ldr x29, [x24,x12]
	ldr x23, [x29, #209]
	cmp x24, x23
	b.eq #0xC
	ldr x20, [x29, #98]
	b #0x8
	ldr x29, [x25]
