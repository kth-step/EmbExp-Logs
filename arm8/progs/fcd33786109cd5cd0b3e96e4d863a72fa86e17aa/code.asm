	ldr x7, [x19,x12]
	ldr x18, [x16, #0]
	cmp x19, x18
	b.eq #0xC
	ldr x29, [x7, #101]
	b #0x8
	ldr x20, [x29]
