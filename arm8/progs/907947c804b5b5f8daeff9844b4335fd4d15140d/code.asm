	ldr x26, [x19,x27]
	ldr x25, [x20, #0]
	cmp x19, x25
	b.eq #0xC
	ldr x28, [x26, #93]
	b #0x8
	ldr x21, [x29, #8]
