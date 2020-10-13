	ldr x12, [x3,x15]
	ldr x27, [x18, #0]
	cmp x3, x27
	b.eq #0xC
	ldr x0, [x12, #171]
	b #0x8
	ldr x14, [x16]
