	ldr x7, [x21,x14]
	ldr x26, [x22, #74]
	cmp x21, x26
	b.eq #0xC
	ldr x16, [x7, #168]
	b #0x8
	ldr x16, [x9, #4]
