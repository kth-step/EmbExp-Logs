	ldr x19, [x28,x2]
	ldr x27, [x19, #44]
	cmp x28, x27
	b.eq #0xC
	ldr x21, [x19, #16]
	b #0x8
	ldr x28, [x22, #16]
