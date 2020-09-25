	ldr x29, [x4,x10]
	ldr x20, [x28, #0]
	cmp x4, x20
	b.eq #0xC
	ldr x26, [x29, #89]
	b #0x8
	ldr x13, [x19, #8]
