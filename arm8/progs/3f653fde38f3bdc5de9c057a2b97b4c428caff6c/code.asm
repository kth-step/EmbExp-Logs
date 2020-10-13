	ldr x12, [x19,x2]
	ldr x15, [x22, #0]
	cmp x19, x15
	b.eq #0xC
	ldr x21, [x12, #113]
	b #0x8
	ldr x28, [x14]
