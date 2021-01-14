	ldr x20, [x26,x18]
	ldr x10, [x22, #134]
	cmp x26, x10
	b.eq #0xC
	ldr x4, [x20, #55]
	b #0x8
	ldr x29, [x18, #4]
