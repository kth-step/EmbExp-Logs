	ldr x15, [x19,x0]
	ldr x12, [x25, #248]
	cmp x19, x12
	b.eq #0xC
	ldr x13, [x15, #143]
	b #0x8
	ldr x18, [x13]
