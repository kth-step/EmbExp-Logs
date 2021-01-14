	ldr x28, [x17,x8]
	ldr x18, [x26, #171]
	cmp x17, x18
	b.eq #0xC
	ldr x4, [x28, #136]
	b #0x8
	ldr x17, [x21]
