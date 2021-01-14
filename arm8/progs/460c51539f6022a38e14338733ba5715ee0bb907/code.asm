	ldr x29, [x18,x2]
	ldr x21, [x22, #40]
	cmp x18, x21
	b.eq #0xC
	ldr x12, [x29, #221]
	b #0x8
	ldr x6, [x8, #8]
