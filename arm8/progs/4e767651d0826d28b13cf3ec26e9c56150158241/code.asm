	ldr x21, [x7,x22]
	ldr x29, [x9, #17]
	cmp x7, x29
	b.eq #0xC
	ldr x18, [x21, #139]
	b #0x8
	ldr x19, [x18, #4]
