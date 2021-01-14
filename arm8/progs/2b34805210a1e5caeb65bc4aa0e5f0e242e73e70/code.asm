	ldr x17, [x11,x21]
	ldr x24, [x8, #139]
	cmp x11, x24
	b.eq #0xC
	ldr x28, [x17, #175]
	b #0x8
	ldr x25, [x18, #16]
