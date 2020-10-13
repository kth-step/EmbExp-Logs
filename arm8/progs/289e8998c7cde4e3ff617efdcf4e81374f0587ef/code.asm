	ldr x6, [x14,x12]
	ldr x25, [x15, #0]
	cmp x14, x25
	b.eq #0xC
	ldr x27, [x6, #74]
	b #0x8
	ldr x23, [x19, #8]
