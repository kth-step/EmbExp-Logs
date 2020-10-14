	ldr x24, [x23,x2]
	ldr x19, [x25, #0]
	cmp x23, x19
	b.eq #0xC
	ldr x8, [x24, #191]
	b #0x8
	ldr x12, [x23, #4]
