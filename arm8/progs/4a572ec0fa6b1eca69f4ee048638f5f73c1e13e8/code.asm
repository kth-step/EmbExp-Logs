	ldr x15, [x29,x24]
	ldr x19, [x12, #140]
	cmp x29, x19
	b.eq #0xC
	ldr x10, [x15, #12]
	b #0x8
	ldr x23, [x6, #4]
