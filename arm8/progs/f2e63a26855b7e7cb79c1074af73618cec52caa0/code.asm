	ldr x21, [x4,x15]
	ldr x20, [x17, #89]
	cmp x4, x20
	b.eq #0xC
	ldr x24, [x21, #90]
	b #0x8
	ldr x5, [x12, #8]
