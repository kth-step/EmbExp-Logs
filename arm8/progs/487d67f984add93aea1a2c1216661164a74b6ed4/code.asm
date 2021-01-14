	ldr x29, [x6,x1]
	ldr x25, [x17, #30]
	cmp x6, x25
	b.eq #0xC
	ldr x26, [x29, #57]
	b #0x8
	ldr x15, [x12, #4]
