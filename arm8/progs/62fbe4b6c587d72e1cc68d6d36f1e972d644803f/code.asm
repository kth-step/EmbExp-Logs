	ldr x21, [x18,x13]
	ldr x19, [x4, #0]
	cmp x18, x19
	b.eq #0xC
	ldr x5, [x21, #163]
	b #0x8
	ldr x10, [x24, #4]
