	ldr x20, [x19,x27]
	ldr x29, [x9, #0]
	cmp x19, x29
	b.eq #0xC
	ldr x4, [x20, #75]
	b #0x8
	ldr x1, [x24, #4]
