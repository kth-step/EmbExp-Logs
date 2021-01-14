	ldr x18, [x3,x27]
	ldr x5, [x3, #67]
	cmp x3, x5
	b.eq #0xC
	ldr x24, [x18, #90]
	b #0x8
	ldr x24, [x27]
