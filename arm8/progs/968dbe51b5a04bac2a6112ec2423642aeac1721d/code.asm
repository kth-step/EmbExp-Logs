	ldr x19, [x3,x12]
	ldr x5, [x27, #57]
	cmp x3, x5
	b.eq #0xC
	ldr x22, [x19, #159]
	b #0x8
	ldr x4, [x22]
