	ldr x2, [x20,x12]
	ldr x19, [x2, #72]
	cmp x20, x19
	b.eq #0xC
	ldr x27, [x2, #101]
	b #0x8
	ldr x17, [x2]
