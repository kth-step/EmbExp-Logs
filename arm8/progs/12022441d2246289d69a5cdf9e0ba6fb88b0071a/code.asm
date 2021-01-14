	ldr x26, [x24,x21]
	ldr x19, [x26, #18]
	cmp x24, x19
	b.eq #0xC
	ldr x13, [x26, #66]
	b #0x8
	ldr x28, [x19, #4]
