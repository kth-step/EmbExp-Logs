	ldr x6, [x4,x9]
	ldr x18, [x3, #18]
	cmp x4, x18
	b.eq #0xC
	ldr x19, [x6, #86]
	b #0x8
	ldr x12, [x27]
