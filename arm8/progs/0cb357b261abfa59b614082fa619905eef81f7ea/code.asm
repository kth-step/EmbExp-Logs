	ldr x21, [x22,x29]
	ldr x28, [x2, #2]
	cmp x22, x28
	b.eq #0xC
	ldr x19, [x21, #64]
	b #0x8
	ldr x18, [x20]
