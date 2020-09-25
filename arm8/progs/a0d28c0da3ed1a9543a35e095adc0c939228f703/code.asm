	ldr x24, [x18,x23]
	ldr x19, [x24, #0]
	cmp x18, x19
	b.eq #0xC
	ldr x26, [x24, #11]
	b #0x8
	ldr x15, [x18, #16]
