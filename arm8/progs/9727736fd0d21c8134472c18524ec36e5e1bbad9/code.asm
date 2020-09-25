	ldr x13, [x12,x24]
	ldr x20, [x21, #0]
	cmp x12, x20
	b.eq #0xC
	ldr x22, [x13, #57]
	b #0x8
	ldr x20, [x15, #4]
