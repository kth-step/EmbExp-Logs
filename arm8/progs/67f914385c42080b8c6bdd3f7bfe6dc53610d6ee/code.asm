	ldr x12, [x18,x4]
	ldr x19, [x26, #0]
	cmp x18, x19
	b.eq #0xC
	ldr x21, [x12, #168]
	b #0x8
	ldr x0, [x15, #16]
