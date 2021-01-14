	ldr x12, [x19,x15]
	ldr x1, [x3, #133]
	cmp x19, x1
	b.eq #0xC
	ldr x22, [x12, #66]
	b #0x8
	ldr x9, [x14, #8]
